import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_confirm_request.freezed.dart';
part 'password_reset_confirm_request.g.dart';

@freezed
abstract class PasswordResetConfirmRequest with _$PasswordResetConfirmRequest {
  const factory PasswordResetConfirmRequest({
    required String key,
    required String newPassword,
  }) = _PasswordResetConfirmRequest;

  factory PasswordResetConfirmRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetConfirmRequestFromJson(json);
}
