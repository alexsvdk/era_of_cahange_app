import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/auth_credentials.dart';
import '../models/auth_token.dart';
import '../models/auth_secure_data.dart';

class AuthCache {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  static const String _accessTokenKey = 'accessToken';
  static const String _accessTokenExpKey = 'accessTokenExp';
  static const String _emailKey = 'email';
  static const String _passwordKey = 'password';

  const AuthCache();

  Future<void> writeSecureData(AuthSecureData secureData) async => Future.wait([
    _secureStorage.write(
      key: _accessTokenKey,
      value: secureData.token.accessToken,
    ),
    _secureStorage.write(
      key: _accessTokenExpKey,
      value: secureData.token.expiresAt.toIso8601String(),
    ),
    _secureStorage.write(key: _emailKey, value: secureData.credentials.email),
    _secureStorage.write(
      key: _passwordKey,
      value: secureData.credentials.password,
    ),
  ]);

  Future<AuthSecureData?> readSecureData() async {
    final data = await Future.wait([
      _secureStorage.read(key: _accessTokenKey),
      _secureStorage.read(key: _emailKey),
      _secureStorage.read(key: _passwordKey),
      _secureStorage.read(key: _accessTokenExpKey),
    ]);

    final accessToken = data[0];
    final email = data[1];
    final password = data[2];
    final accessTokenExpString = data[3];

    if (accessToken != null &&
        email != null &&
        password != null &&
        accessTokenExpString != null) {
      final accessTokenExp = DateTime.parse(accessTokenExpString);
      return AuthSecureData(
        token: AuthToken(accessToken: accessToken, expiresAt: accessTokenExp),
        credentials: AuthCredentials(email: email, password: password),
      );
    }
    return null;
  }

  Future<void> deleteSecureData() async => Future.wait([
    _secureStorage.delete(key: _accessTokenKey),
    _secureStorage.delete(key: _emailKey),
    _secureStorage.delete(key: _passwordKey),
    _secureStorage.delete(key: _accessTokenExpKey),
  ]);
}
