import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_token.dart';
import 'auth_user.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required AuthToken token,
    required AuthUser user,
  }) = _AuthResponse;
  const AuthResponse._();
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
