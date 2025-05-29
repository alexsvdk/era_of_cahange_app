import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_config.freezed.dart';
part 'network_config.g.dart';

@freezed
abstract class NetworkConfig with _$NetworkConfig {
  const factory NetworkConfig({
    required String baseUrl,
    @Default(3) int maxRetries,
    @Default(10) int reconnectDelay,
  }) = _NetworkConfig;
  const NetworkConfig._();
  factory NetworkConfig.fromJson(Map<String, dynamic> json) =>
      _$NetworkConfigFromJson(json);

  static const name = 'network';

  static const defaultValue = NetworkConfig(
    baseUrl: 'https://api.eraperemen.info/app',
  );

}
