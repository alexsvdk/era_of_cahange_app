// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkConfig _$NetworkConfigFromJson(Map<String, dynamic> json) =>
    _NetworkConfig(
      baseUrl: json['base_url'] as String,
      maxRetries: (json['max_retries'] as num?)?.toInt() ?? 3,
      reconnectDelay: (json['reconnect_delay'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$NetworkConfigToJson(_NetworkConfig instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'max_retries': instance.maxRetries,
      'reconnect_delay': instance.reconnectDelay,
    };
