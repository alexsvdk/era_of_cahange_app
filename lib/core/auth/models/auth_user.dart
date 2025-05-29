import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../dao/models/app_hive_type.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  @HiveType(typeId: AppHiveTypes.authUser)
  const factory AuthUser({
    @HiveField(0) required String userId,
    @HiveField(1) required String email,
    @HiveField(2) required bool isEmailVerified,
  }) = _AuthUser;
  const AuthUser._();
  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
