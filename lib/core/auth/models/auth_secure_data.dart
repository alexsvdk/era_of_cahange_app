import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_token.dart';
import 'auth_credentials.dart';

part 'auth_secure_data.freezed.dart';

@freezed
abstract class AuthSecureData with _$AuthSecureData {
  const factory AuthSecureData({
    required AuthToken token,
    required AuthCredentials credentials,
  }) = _AuthSecureData;
  const AuthSecureData._();
}
