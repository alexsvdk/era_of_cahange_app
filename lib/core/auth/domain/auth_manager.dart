import '../data/auth_api.dart';
import '../models/auth_credentials.dart';
import '../models/auth_secure_data.dart';
import '../models/auth_token.dart';
import 'auth_secure_data_holder.dart';
import 'auth_user_holder.dart';

class AuthManager {
  final AuthApi _api;
  final AuthSecureDataHolder _secureDataHolder;
  final AuthUserHolder _userHolder;

  AuthManager(
    this._api,
    this._secureDataHolder,
    this._userHolder,
  );

  Future<void> signIn(AuthCredentials request) async {
    final response = await _api.login(request);
    final authToken = AuthToken(
      accessToken: response.token.accessToken,
      expiresAt: response.token.expiresAt,
    );
    _secureDataHolder.setData(
      data: AuthSecureData(token: authToken, credentials: request),
      source: AuthSecureDataHolderSetTokenSource.authManagerSignIn,
    );

    // FirebaseAnalytics.instance.logLogin(loginMethod: 'email');
  }

  Future<void> signUp(AuthCredentials request) async {
    final response = await _api.register(request);
    final authToken = AuthToken(
      accessToken: response.token.accessToken,
      expiresAt: response.token.expiresAt,
    );
    _secureDataHolder.setData(
      data: AuthSecureData(token: authToken, credentials: request),
      source: AuthSecureDataHolderSetTokenSource.authManagerSignUp,
    );

    // FirebaseAnalytics.instance.logSignUp(signUpMethod: 'email');
  }

  void signOut() {
    final secureData = _secureDataHolder.state;
    if (secureData == null) return;

    _secureDataHolder.setData(
      data: null,
      source: AuthSecureDataHolderSetTokenSource.authManagerSignOut,
    );
    _userHolder.setUser(user: null);
    //_api.revoke(secureData.token.accessToken);

    // FirebaseAnalytics.instance.logEvent(name: 'sign_out');
  }
}
