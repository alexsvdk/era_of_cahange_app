import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_config.freezed.dart';
part 'debug_config.g.dart';

@freezed
abstract class DebugConfig with _$DebugConfig {
  static const name = 'debug';

  const factory DebugConfig({required bool enabled}) = _DebugConfig;

  static final defaultValue = DebugConfig(enabled: kDebugMode);

  const DebugConfig._();

  factory DebugConfig.fromJson(Map<String, dynamic> json) =>
      _$DebugConfigFromJson(json);
}
