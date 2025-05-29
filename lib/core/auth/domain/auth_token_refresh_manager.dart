import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';

import '../models/auth_token.dart';
import 'auth_user_holder.dart';

const _refreshTtl = Duration(minutes: 1);

class AuthTokenRefreshManager {
  final TokensApi _api;
  final AuthTokenHolder _tokenHolder;
  final UserHolder _userHolder;

  AuthTokenRefreshManager(this._api, this._tokenHolder, this._userHolder);

  Timer? _timer;
  StreamSubscription? _sub;

  Future<void> init() async {
    await _sub?.cancel();
    await onTokenChanged();
    _sub = _tokenHolder.stream.listen((_) => onTokenChanged());
  }

  Future<void> onTokenChanged() async {
    final token = _tokenHolder.state;
    if (token == null) {
      return;
    }

    final remainingTime = token.accessTokenExp.difference(DateTime.now());
    if (remainingTime <= _refreshTtl) {
      await safeRefresh();
    } else {
      _timer?.cancel();
      _timer = Timer(remainingTime - _refreshTtl, safeRefresh);
    }
  }

  Future<AuthToken?> safeRefresh() async {
    try {
      final res = await requireRefresh();
      FirebaseAnalytics.instance.logEvent(name: 'token_refreshed');
      return res;
    } on RevokeTokenException {
      FirebaseAnalytics.instance.logEvent(name: 'token_revoked');
      return null;
    }
  }

  /// throws [RevokeTokenException]
  Future<AuthToken> requireRefresh() async {
    _timer?.cancel();
    _timer = null;
    final refreshToken = _tokenHolder.state?.refreshToken;
    if (refreshToken == null) {
      throw RevokeTokenException();
    }

    AuthToken? token;
    do {
      try {
        final response = await _api.refresh(refreshToken);
        token = AuthToken(
          accessToken: response.token,
          refreshToken: response.refreshToken,
          accessTokenExp: DateTime.now().add(
            Duration(seconds: response.expiresIn),
          ),
        );
        _tokenHolder.setToken(
          token: token,
          source: AuthTokenHolderSetTokenSource.refreshManagerSuccess,
        );
        _userHolder.setUser(user: response.resourceOwner);
      } catch (e) {
        if (e is DioException) {
          final statusCode = e.response?.statusCode ?? 0;
          if (statusCode ~/ 100 == 4) {
            _tokenHolder.setToken(
              token: null,
              source: AuthTokenHolderSetTokenSource.refreshManagerFaulure,
            );
            _userHolder.setUser(user: null);
            throw RevokeTokenException();
          }
        }

        await Future.delayed(const Duration(seconds: 5));
      }
    } while (token == null);

    return token;
  }

  Future<void> dispose() async {
    _timer?.cancel();
    await _sub?.cancel();
    _timer = null;
    _sub = null;
  }
}
