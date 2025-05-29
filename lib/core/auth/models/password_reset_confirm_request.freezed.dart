// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_confirm_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResetConfirmRequest {

 String get key; String get newPassword;
/// Create a copy of PasswordResetConfirmRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordResetConfirmRequestCopyWith<PasswordResetConfirmRequest> get copyWith => _$PasswordResetConfirmRequestCopyWithImpl<PasswordResetConfirmRequest>(this as PasswordResetConfirmRequest, _$identity);

  /// Serializes this PasswordResetConfirmRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetConfirmRequest&&(identical(other.key, key) || other.key == key)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,newPassword);

@override
String toString() {
  return 'PasswordResetConfirmRequest(key: $key, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $PasswordResetConfirmRequestCopyWith<$Res>  {
  factory $PasswordResetConfirmRequestCopyWith(PasswordResetConfirmRequest value, $Res Function(PasswordResetConfirmRequest) _then) = _$PasswordResetConfirmRequestCopyWithImpl;
@useResult
$Res call({
 String key, String newPassword
});




}
/// @nodoc
class _$PasswordResetConfirmRequestCopyWithImpl<$Res>
    implements $PasswordResetConfirmRequestCopyWith<$Res> {
  _$PasswordResetConfirmRequestCopyWithImpl(this._self, this._then);

  final PasswordResetConfirmRequest _self;
  final $Res Function(PasswordResetConfirmRequest) _then;

/// Create a copy of PasswordResetConfirmRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PasswordResetConfirmRequest implements PasswordResetConfirmRequest {
  const _PasswordResetConfirmRequest({required this.key, required this.newPassword});
  factory _PasswordResetConfirmRequest.fromJson(Map<String, dynamic> json) => _$PasswordResetConfirmRequestFromJson(json);

@override final  String key;
@override final  String newPassword;

/// Create a copy of PasswordResetConfirmRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordResetConfirmRequestCopyWith<_PasswordResetConfirmRequest> get copyWith => __$PasswordResetConfirmRequestCopyWithImpl<_PasswordResetConfirmRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordResetConfirmRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordResetConfirmRequest&&(identical(other.key, key) || other.key == key)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,newPassword);

@override
String toString() {
  return 'PasswordResetConfirmRequest(key: $key, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$PasswordResetConfirmRequestCopyWith<$Res> implements $PasswordResetConfirmRequestCopyWith<$Res> {
  factory _$PasswordResetConfirmRequestCopyWith(_PasswordResetConfirmRequest value, $Res Function(_PasswordResetConfirmRequest) _then) = __$PasswordResetConfirmRequestCopyWithImpl;
@override @useResult
$Res call({
 String key, String newPassword
});




}
/// @nodoc
class __$PasswordResetConfirmRequestCopyWithImpl<$Res>
    implements _$PasswordResetConfirmRequestCopyWith<$Res> {
  __$PasswordResetConfirmRequestCopyWithImpl(this._self, this._then);

  final _PasswordResetConfirmRequest _self;
  final $Res Function(_PasswordResetConfirmRequest) _then;

/// Create a copy of PasswordResetConfirmRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? newPassword = null,}) {
  return _then(_PasswordResetConfirmRequest(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
