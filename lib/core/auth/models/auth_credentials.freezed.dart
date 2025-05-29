// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthCredentials {

 String get email; String get password;
/// Create a copy of AuthCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthCredentialsCopyWith<AuthCredentials> get copyWith => _$AuthCredentialsCopyWithImpl<AuthCredentials>(this as AuthCredentials, _$identity);

  /// Serializes this AuthCredentials to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthCredentials&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthCredentials(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthCredentialsCopyWith<$Res>  {
  factory $AuthCredentialsCopyWith(AuthCredentials value, $Res Function(AuthCredentials) _then) = _$AuthCredentialsCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthCredentialsCopyWithImpl<$Res>
    implements $AuthCredentialsCopyWith<$Res> {
  _$AuthCredentialsCopyWithImpl(this._self, this._then);

  final AuthCredentials _self;
  final $Res Function(AuthCredentials) _then;

/// Create a copy of AuthCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthCredentials implements AuthCredentials {
  const _AuthCredentials({required this.email, required this.password});
  factory _AuthCredentials.fromJson(Map<String, dynamic> json) => _$AuthCredentialsFromJson(json);

@override final  String email;
@override final  String password;

/// Create a copy of AuthCredentials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthCredentialsCopyWith<_AuthCredentials> get copyWith => __$AuthCredentialsCopyWithImpl<_AuthCredentials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthCredentialsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthCredentials&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthCredentials(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthCredentialsCopyWith<$Res> implements $AuthCredentialsCopyWith<$Res> {
  factory _$AuthCredentialsCopyWith(_AuthCredentials value, $Res Function(_AuthCredentials) _then) = __$AuthCredentialsCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$AuthCredentialsCopyWithImpl<$Res>
    implements _$AuthCredentialsCopyWith<$Res> {
  __$AuthCredentialsCopyWithImpl(this._self, this._then);

  final _AuthCredentials _self;
  final $Res Function(_AuthCredentials) _then;

/// Create a copy of AuthCredentials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_AuthCredentials(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
