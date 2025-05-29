import 'dart:async';

import '../../arch/async_lifecycle.dart';
import '../../navigation/domain/app_navigator.dart';
import 'auth_secure_data_holder.dart';

class AuthLogoutNavigationManager with AsyncLifecycle {
  final AppNavigator _navigator;
  final AuthSecureDataHolder _authSecureDataHolder;

  AuthLogoutNavigationManager(this._navigator, this._authSecureDataHolder);

  late final StreamSubscription<void> _sub;

  @override
  Future<void> init() async {
    _sub = _authSecureDataHolder.stream.where((e) => e == null).listen((_) {
      _navigator.signIn();
    });
  }

  @override
  Future<void> dispose() async {
    await _sub.cancel();
  }
}
