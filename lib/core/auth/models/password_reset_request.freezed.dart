// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResetRequest {

 String get email;
/// Create a copy of PasswordResetRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordResetRequestCopyWith<PasswordResetRequest> get copyWith => _$PasswordResetRequestCopyWithImpl<PasswordResetRequest>(this as PasswordResetRequest, _$identity);

  /// Serializes this PasswordResetRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'PasswordResetRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class $PasswordResetRequestCopyWith<$Res>  {
  factory $PasswordResetRequestCopyWith(PasswordResetRequest value, $Res Function(PasswordResetRequest) _then) = _$PasswordResetRequestCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$PasswordResetRequestCopyWithImpl<$Res>
    implements $PasswordResetRequestCopyWith<$Res> {
  _$PasswordResetRequestCopyWithImpl(this._self, this._then);

  final PasswordResetRequest _self;
  final $Res Function(PasswordResetRequest) _then;

/// Create a copy of PasswordResetRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PasswordResetRequest implements PasswordResetRequest {
  const _PasswordResetRequest({required this.email});
  factory _PasswordResetRequest.fromJson(Map<String, dynamic> json) => _$PasswordResetRequestFromJson(json);

@override final  String email;

/// Create a copy of PasswordResetRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordResetRequestCopyWith<_PasswordResetRequest> get copyWith => __$PasswordResetRequestCopyWithImpl<_PasswordResetRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasswordResetRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordResetRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'PasswordResetRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class _$PasswordResetRequestCopyWith<$Res> implements $PasswordResetRequestCopyWith<$Res> {
  factory _$PasswordResetRequestCopyWith(_PasswordResetRequest value, $Res Function(_PasswordResetRequest) _then) = __$PasswordResetRequestCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$PasswordResetRequestCopyWithImpl<$Res>
    implements _$PasswordResetRequestCopyWith<$Res> {
  __$PasswordResetRequestCopyWithImpl(this._self, this._then);

  final _PasswordResetRequest _self;
  final $Res Function(_PasswordResetRequest) _then;

/// Create a copy of PasswordResetRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_PasswordResetRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
