import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract interface class AsyncLifecycle {
  FutureOr<void> init();

  FutureOr<void> dispose();
}

extension AsyncLifecycleX on AsyncLifecycle {
  attach(Ref ref) {
    ref.onDispose(dispose);
    init();
  }
}
