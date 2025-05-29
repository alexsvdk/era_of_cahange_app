import 'async_lifecycle.dart';

class InitializeQueue with AsyncLifecycle {
  final List<Set<AsyncLifecycle>> _queue;
  final List<Set<AsyncLifecycle>> unawaitedQueue;

  InitializeQueue(this._queue, {this.unawaitedQueue = const []});

  @override
  Future<void> init() async {
    for (final set in _queue) {
      await Future.wait(
        set.map((lifecycle) async {
          await lifecycle.init();
        }),
      );
    }
    Future(() {
      for (final set in unawaitedQueue) {
        Future.wait(
          set.map((lifecycle) async {
            await lifecycle.init();
          }),
        );
      }
    });
  }

  @override
  Future<void> dispose() async {
    for (final set in unawaitedQueue) {
      await Future.wait(
        set.map((lifecycle) async {
          await lifecycle.dispose();
        }),
      );
    }
    for (final set in _queue.reversed) {
      await Future.wait(
        set.map((lifecycle) async {
          await lifecycle.dispose();
        }),
      );
    }
  }
}
