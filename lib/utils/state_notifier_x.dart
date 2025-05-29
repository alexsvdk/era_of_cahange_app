import 'package:rxdart/rxdart.dart';
import 'package:state_notifier/state_notifier.dart';

extension StateNotifierX<T> on StateNotifier<T> {
  // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
  Stream<T> get instantStream => stream.startWith(state);
}
