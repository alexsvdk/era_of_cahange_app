// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DebugConfig {

 bool get enabled;
/// Create a copy of DebugConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebugConfigCopyWith<DebugConfig> get copyWith => _$DebugConfigCopyWithImpl<DebugConfig>(this as DebugConfig, _$identity);

  /// Serializes this DebugConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebugConfig&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'DebugConfig(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $DebugConfigCopyWith<$Res>  {
  factory $DebugConfigCopyWith(DebugConfig value, $Res Function(DebugConfig) _then) = _$DebugConfigCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class _$DebugConfigCopyWithImpl<$Res>
    implements $DebugConfigCopyWith<$Res> {
  _$DebugConfigCopyWithImpl(this._self, this._then);

  final DebugConfig _self;
  final $Res Function(DebugConfig) _then;

/// Create a copy of DebugConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DebugConfig extends DebugConfig {
  const _DebugConfig({required this.enabled}): super._();
  factory _DebugConfig.fromJson(Map<String, dynamic> json) => _$DebugConfigFromJson(json);

@override final  bool enabled;

/// Create a copy of DebugConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugConfigCopyWith<_DebugConfig> get copyWith => __$DebugConfigCopyWithImpl<_DebugConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebugConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugConfig&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'DebugConfig(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$DebugConfigCopyWith<$Res> implements $DebugConfigCopyWith<$Res> {
  factory _$DebugConfigCopyWith(_DebugConfig value, $Res Function(_DebugConfig) _then) = __$DebugConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$DebugConfigCopyWithImpl<$Res>
    implements _$DebugConfigCopyWith<$Res> {
  __$DebugConfigCopyWithImpl(this._self, this._then);

  final _DebugConfig _self;
  final $Res Function(_DebugConfig) _then;

/// Create a copy of DebugConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_DebugConfig(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
