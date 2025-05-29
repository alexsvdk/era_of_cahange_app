part of 'config.dart';

abstract class TypedConfig<T> extends StateNotifier<T> {
  TypedConfig(super.state);

  T get config => state;
}


class _MockTypedConfig<T> extends TypedConfig<T> {
  _MockTypedConfig(super.state);
}

/*

class _TypedConfig<T> extends TypedConfig<T> {
  final String _name;
  final T Function(Map<String, Object?>) _mapper;
  _TypedConfig({
    required String name,
    required T initial,
    required T Function(Map<String, Object?>) mapper,
  }) : _name = name,
       _mapper = mapper,
       super(initial);

  void update(Map<String, RemoteConfigValue> allConfigData) {
    final newConfig = maybeDecodeConfig(
      allConfigData: allConfigData,
      name: _name,
      mapper: _mapper,
    );

    if (newConfig != null && newConfig != config) {
      state = newConfig;
    }
  }

  static T? maybeDecodeConfig<T>({
    required Map<String, RemoteConfigValue> allConfigData,
    required String name,
    required T Function(Map<String, Object?>) mapper,
  }) {
    final rawData = allConfigData[name]?.asString();
    if (rawData == null) {
      return null;
    }

    try {
      final data = jsonDecode(rawData) as Map<String, Object?>;
      return mapper(data);
    } catch (e, s) {
      FirebaseCrashlytics.instance.recordError(e, s);
      return null;
    }
  }
}

*/