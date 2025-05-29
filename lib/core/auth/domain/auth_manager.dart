import 'package:aiacademy_app/core/auth/domain/user_holder.dart';
import 'package:aiacademy_app/core/di/user_scope.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:rxdart/rxdart.dart';

import '../../api/users/models/user_sign_in_request.dart';
import '../../api/users/models/users_sign_up_request.dart';
import '../../api/users/users_unauthorized_api.dart';
import '../models/auth_token.dart';
import 'auth_secure_data_holder.dart';

class AuthManager {
  final TokensApi _api;
  final AuthTokenHolder _authTokenHolder;
  final UserHolder _userHolder;
  final UserScopeHolder _userScopeHolder;

  AuthManager(
    this._api,
    this._authTokenHolder,
    this._userHolder,
    this._userScopeHolder,
  );

  Future<void> signIn(UserSignInRequest request) async {
    final response = await _api.signIn(request);
    final authToken = AuthToken(
      accessToken: response.token,
      refreshToken: response.refreshToken,
      accessTokenExp: DateTime.now().add(Duration(seconds: response.expiresIn)),
    );
    _authTokenHolder.setToken(
      token: authToken,
      source: AuthTokenHolderSetTokenSource.authManagerSignIn,
    );
    _userHolder.setUser(user: response.resourceOwner);
    if (_userScopeHolder.scope == null) {
      await _userScopeHolder.stream.whereNotNull().first;
    }

    FirebaseAnalytics.instance.logLogin(loginMethod: 'email');
  }

  Future<void> signUp(UserSignUpRequest request) async {
    final response = await _api.signUp(request);
    final authToken = AuthToken(
      accessToken: response.token,
      refreshToken: response.refreshToken,
      accessTokenExp: DateTime.now().add(Duration(seconds: response.expiresIn)),
    );
    _authTokenHolder.setToken(
      token: authToken,
      source: AuthTokenHolderSetTokenSource.authManagerSignUp,
    );
    _userHolder.setUser(user: response.resourceOwner);
    if (_userScopeHolder.scope == null) {
      await _userScopeHolder.stream.whereNotNull().first;
    }

    FirebaseAnalytics.instance.logSignUp(signUpMethod: 'email');
  }

  void signOut() {
    final token = _authTokenHolder.state;
    if (token == null) return;

    _authTokenHolder.setToken(
      token: null,
      source: AuthTokenHolderSetTokenSource.authManagerSignOut,
    );
    _userHolder.setUser(user: null);
    _api.revoke(token.accessToken);

    FirebaseAnalytics.instance.logEvent(name: 'sign_out');
  }
}
