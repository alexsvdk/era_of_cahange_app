part of 'config.dart';

class ConfigProvider implements AsyncLifecycle {
  //final _remoteConfig = FirebaseRemoteConfig.instance;
  final _configs = <String, _MockTypedConfig<Object>>{};
  late StreamSubscription<void> _subscription;

  @override
  Future<void> init() async {
    /*
    await _remoteConfig.ensureInitialized();
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval:
            kDebugMode ? const Duration(minutes: 1) : const Duration(hours: 1),
      ),
    );
    try {
      await _remoteConfig.fetchAndActivate();
      final allConfigData = _remoteConfig.getAll();
      for (final config in _configs.values) {
        config.update(allConfigData);
      }
    } catch (e) {
      await _remoteConfig.activate();
    }
    _subscription = _remoteConfig.onConfigUpdated
        .asyncMap((update) async {
          if (update.updatedKeys.any(_configs.containsKey)) {
            await _remoteConfig.fetch();
          }
          return update;
        })
        .listen((update) {
          final rawConfig = _remoteConfig.getAll();
          for (final name in update.updatedKeys) {
            final config = _configs[name];
            if (config != null) {
              config.update(rawConfig);
            }
          }
        });
        */
  }

  TypedConfig<T> getConfig<T extends Object>({
    required String name,
    required T defaultValue,
    required T Function(Map<String, Object?>) mapper,
  }) {
    if (_configs.containsKey(name)) {
      return _configs[name] as TypedConfig<T>;
    }
    /*
    final initialValue = _TypedConfig.maybeDecodeConfig(
      allConfigData: _remoteConfig.getAll(),
      name: name,
      mapper: mapper,
    );
    final config = _TypedConfig<T>(
      name: name,
      initial: initialValue ?? defaultValue,
      mapper: mapper,
    );
    */
    final config = _MockTypedConfig<T>(defaultValue);
    _configs[name] = config;
    return config;
  }

  @override
  void dispose() {
    _subscription.cancel();
    for (var config in _configs.values) {
      config.dispose();
    }
    _configs.clear();
  }
}
