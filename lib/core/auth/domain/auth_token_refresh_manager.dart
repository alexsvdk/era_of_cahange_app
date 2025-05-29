import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';

import '../../arch/async_lifecycle.dart';
import '../data/auth_api.dart';
import '../models/auth_token.dart';
import 'auth_secure_data_holder.dart';
import 'auth_user_holder.dart';

const _refreshTtl = Duration(minutes: 1);

class AuthTokenRefreshManager with AsyncLifecycle {
  final AuthApi _api;
  final AuthSecureDataHolder _secureDataHolder;
  final AuthUserHolder _userHolder;

  AuthTokenRefreshManager(this._api, this._secureDataHolder, this._userHolder);

  Timer? _timer;
  StreamSubscription? _sub;

  @override
  Future<void> init() async {
    await _sub?.cancel();
    await onTokenChanged();
    _sub = _secureDataHolder.stream.listen((_) => onTokenChanged());
  }

  Future<void> onTokenChanged() async {
    final token = _secureDataHolder.state?.token;
    if (token == null) {
      return;
    }

    final remainingTime = token.expiresAt.difference(DateTime.now());
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
      return res;
    } on RevokeTokenException {
      return null;
    }
  }

  /// throws [RevokeTokenException]
  Future<AuthToken> requireRefresh() async {
    _timer?.cancel();
    _timer = null;
    final credentials = _secureDataHolder.state?.credentials;
    if (credentials == null) {
      throw RevokeTokenException();
    }

    AuthToken? token;
    do {
      try {
        final response = await _api.login(credentials);
        token = AuthToken(
          accessToken: response.token.accessToken,
          expiresAt: response.token.expiresAt,
        );
        _secureDataHolder.setData(
          data: _secureDataHolder.state?.copyWith(token: token),
          source: AuthSecureDataHolderSetTokenSource.refreshManagerSuccess,
        );
        _userHolder.setUser(user: response.user);
      } catch (e) {
        if (e is DioException) {
          final statusCode = e.response?.statusCode ?? 0;
          if (statusCode ~/ 100 == 4 && statusCode != 429) {
            _secureDataHolder.setData(
              data: null,
              source: AuthSecureDataHolderSetTokenSource.refreshManagerFaulure,
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

  @override
  Future<void> dispose() async {
    _timer?.cancel();
    await _sub?.cancel();
    _timer = null;
    _sub = null;
  }
}
