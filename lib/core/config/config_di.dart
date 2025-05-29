import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../arch/async_lifecycle.dart';
import 'domain/config.dart';
import 'models/app_links_config.dart';
import 'models/debug_config.dart';
import 'models/network_config.dart';

final class ConfigDi {
  ConfigDi._();

      static final _configProvider = AsyncLifecycleProvider(
    (_) => ConfigProvider(),
  );

  static final network = StateNotifierProvider((ref) {
    final configProvider = ref.watch(_configProvider);
    return configProvider.getConfig(
      name: NetworkConfig.name,
      defaultValue: NetworkConfig.defaultValue,
      mapper: NetworkConfig.fromJson,
    );
  });

  static final appLinks = StateNotifierProvider((ref) {
    final configProvider = ref.watch(_configProvider);
    return configProvider.getConfig(
      name: AppLinksConfig.name,
      defaultValue: AppLinksConfig.defaultValue,
      mapper: AppLinksConfig.fromJson,
    );
  });

  static final debug = StateNotifierProvider((ref) {
    final configProvider = ref.watch(_configProvider);
    return configProvider.getConfig(
      name: DebugConfig.name,
      defaultValue: DebugConfig.defaultValue,
      mapper: DebugConfig.fromJson,
    );
  });
}
