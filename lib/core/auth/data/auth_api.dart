import 'package:dio/dio.dart';
import '../models/auth_response.dart';
import '../models/auth_credentials.dart';
import '../models/email_verification_request.dart';
import '../models/password_reset_confirm_request.dart';
import '../models/password_reset_request.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<AuthResponse> login(AuthCredentials credentials) async {
    final response = await _dio.post('/login', data: credentials.toJson());
    return AuthResponse.fromJson(response.data);
  }

  Future<AuthResponse> register(AuthCredentials request) async {
    final response = await _dio.post('/register', data: request.toJson());
    return AuthResponse.fromJson(response.data);
  }

  Future<void> verifyEmail(EmailVerificationRequest request) async {
    await _dio.post('/verify-email', data: request.toJson());
  }

  Future<void> requestPasswordReset(PasswordResetRequest request) async {
    await _dio.post('/password-reset', data: request.toJson());
  }

  Future<void> confirmPasswordReset(PasswordResetConfirmRequest request) async {
    await _dio.post('/password-reset/confirm', data: request.toJson());
  }
}
