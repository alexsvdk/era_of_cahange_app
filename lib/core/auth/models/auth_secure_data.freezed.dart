// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_secure_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthSecureData {

 AuthToken get token; AuthCredentials get credentials;
/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSecureDataCopyWith<AuthSecureData> get copyWith => _$AuthSecureDataCopyWithImpl<AuthSecureData>(this as AuthSecureData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSecureData&&(identical(other.token, token) || other.token == token)&&(identical(other.credentials, credentials) || other.credentials == credentials));
}


@override
int get hashCode => Object.hash(runtimeType,token,credentials);

@override
String toString() {
  return 'AuthSecureData(token: $token, credentials: $credentials)';
}


}

/// @nodoc
abstract mixin class $AuthSecureDataCopyWith<$Res>  {
  factory $AuthSecureDataCopyWith(AuthSecureData value, $Res Function(AuthSecureData) _then) = _$AuthSecureDataCopyWithImpl;
@useResult
$Res call({
 AuthToken token, AuthCredentials credentials
});


$AuthTokenCopyWith<$Res> get token;$AuthCredentialsCopyWith<$Res> get credentials;

}
/// @nodoc
class _$AuthSecureDataCopyWithImpl<$Res>
    implements $AuthSecureDataCopyWith<$Res> {
  _$AuthSecureDataCopyWithImpl(this._self, this._then);

  final AuthSecureData _self;
  final $Res Function(AuthSecureData) _then;

/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? credentials = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as AuthToken,credentials: null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as AuthCredentials,
  ));
}
/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokenCopyWith<$Res> get token {
  
  return $AuthTokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthCredentialsCopyWith<$Res> get credentials {
  
  return $AuthCredentialsCopyWith<$Res>(_self.credentials, (value) {
    return _then(_self.copyWith(credentials: value));
  });
}
}


/// @nodoc


class _AuthSecureData extends AuthSecureData {
  const _AuthSecureData({required this.token, required this.credentials}): super._();
  

@override final  AuthToken token;
@override final  AuthCredentials credentials;

/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSecureDataCopyWith<_AuthSecureData> get copyWith => __$AuthSecureDataCopyWithImpl<_AuthSecureData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSecureData&&(identical(other.token, token) || other.token == token)&&(identical(other.credentials, credentials) || other.credentials == credentials));
}


@override
int get hashCode => Object.hash(runtimeType,token,credentials);

@override
String toString() {
  return 'AuthSecureData(token: $token, credentials: $credentials)';
}


}

/// @nodoc
abstract mixin class _$AuthSecureDataCopyWith<$Res> implements $AuthSecureDataCopyWith<$Res> {
  factory _$AuthSecureDataCopyWith(_AuthSecureData value, $Res Function(_AuthSecureData) _then) = __$AuthSecureDataCopyWithImpl;
@override @useResult
$Res call({
 AuthToken token, AuthCredentials credentials
});


@override $AuthTokenCopyWith<$Res> get token;@override $AuthCredentialsCopyWith<$Res> get credentials;

}
/// @nodoc
class __$AuthSecureDataCopyWithImpl<$Res>
    implements _$AuthSecureDataCopyWith<$Res> {
  __$AuthSecureDataCopyWithImpl(this._self, this._then);

  final _AuthSecureData _self;
  final $Res Function(_AuthSecureData) _then;

/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? credentials = null,}) {
  return _then(_AuthSecureData(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as AuthToken,credentials: null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as AuthCredentials,
  ));
}

/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokenCopyWith<$Res> get token {
  
  return $AuthTokenCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of AuthSecureData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthCredentialsCopyWith<$Res> get credentials {
  
  return $AuthCredentialsCopyWith<$Res>(_self.credentials, (value) {
    return _then(_self.copyWith(credentials: value));
  });
}
}

// dart format on
