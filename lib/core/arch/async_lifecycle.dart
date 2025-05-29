import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin AsyncLifecycle {
  final _initializeCompleter = Completer<void>();

  bool get isInitialized => _initializeCompleter.isCompleted;

  @protected
  FutureOr<void> init() {}

  @protected
  FutureOr<void> dispose() {}

  void attach(Ref ref) {
    ref.onDispose(dispose);
    _initializeCompleter.complete(init());
  }

  FutureOr<void> ensureInitialized() {
    if (!isInitialized) {
      return _initializeCompleter.future;
    }
  }
}

// ignore: non_constant_identifier_names
Provider<T> AsyncLifecycleProvider<T extends AsyncLifecycle>(
  T Function(Ref ref) create,
) {
  return Provider<T>((ref) {
    final instance = create(ref);
    instance.attach(ref);
    return instance;
  });
}
