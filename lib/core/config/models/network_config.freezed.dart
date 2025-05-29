// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkConfig {

 String get baseUrl; int get maxRetries; int get reconnectDelay;
/// Create a copy of NetworkConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkConfigCopyWith<NetworkConfig> get copyWith => _$NetworkConfigCopyWithImpl<NetworkConfig>(this as NetworkConfig, _$identity);

  /// Serializes this NetworkConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkConfig&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.maxRetries, maxRetries) || other.maxRetries == maxRetries)&&(identical(other.reconnectDelay, reconnectDelay) || other.reconnectDelay == reconnectDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,maxRetries,reconnectDelay);

@override
String toString() {
  return 'NetworkConfig(baseUrl: $baseUrl, maxRetries: $maxRetries, reconnectDelay: $reconnectDelay)';
}


}

/// @nodoc
abstract mixin class $NetworkConfigCopyWith<$Res>  {
  factory $NetworkConfigCopyWith(NetworkConfig value, $Res Function(NetworkConfig) _then) = _$NetworkConfigCopyWithImpl;
@useResult
$Res call({
 String baseUrl, int maxRetries, int reconnectDelay
});




}
/// @nodoc
class _$NetworkConfigCopyWithImpl<$Res>
    implements $NetworkConfigCopyWith<$Res> {
  _$NetworkConfigCopyWithImpl(this._self, this._then);

  final NetworkConfig _self;
  final $Res Function(NetworkConfig) _then;

/// Create a copy of NetworkConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? maxRetries = null,Object? reconnectDelay = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,maxRetries: null == maxRetries ? _self.maxRetries : maxRetries // ignore: cast_nullable_to_non_nullable
as int,reconnectDelay: null == reconnectDelay ? _self.reconnectDelay : reconnectDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NetworkConfig extends NetworkConfig {
  const _NetworkConfig({required this.baseUrl, this.maxRetries = 3, this.reconnectDelay = 10}): super._();
  factory _NetworkConfig.fromJson(Map<String, dynamic> json) => _$NetworkConfigFromJson(json);

@override final  String baseUrl;
@override@JsonKey() final  int maxRetries;
@override@JsonKey() final  int reconnectDelay;

/// Create a copy of NetworkConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkConfigCopyWith<_NetworkConfig> get copyWith => __$NetworkConfigCopyWithImpl<_NetworkConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkConfig&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.maxRetries, maxRetries) || other.maxRetries == maxRetries)&&(identical(other.reconnectDelay, reconnectDelay) || other.reconnectDelay == reconnectDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,maxRetries,reconnectDelay);

@override
String toString() {
  return 'NetworkConfig(baseUrl: $baseUrl, maxRetries: $maxRetries, reconnectDelay: $reconnectDelay)';
}


}

/// @nodoc
abstract mixin class _$NetworkConfigCopyWith<$Res> implements $NetworkConfigCopyWith<$Res> {
  factory _$NetworkConfigCopyWith(_NetworkConfig value, $Res Function(_NetworkConfig) _then) = __$NetworkConfigCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, int maxRetries, int reconnectDelay
});




}
/// @nodoc
class __$NetworkConfigCopyWithImpl<$Res>
    implements _$NetworkConfigCopyWith<$Res> {
  __$NetworkConfigCopyWithImpl(this._self, this._then);

  final _NetworkConfig _self;
  final $Res Function(_NetworkConfig) _then;

/// Create a copy of NetworkConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? maxRetries = null,Object? reconnectDelay = null,}) {
  return _then(_NetworkConfig(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,maxRetries: null == maxRetries ? _self.maxRetries : maxRetries // ignore: cast_nullable_to_non_nullable
as int,reconnectDelay: null == reconnectDelay ? _self.reconnectDelay : reconnectDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
