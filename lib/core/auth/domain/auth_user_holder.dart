import 'package:state_notifier/state_notifier.dart';

import '../models/auth_user.dart';

abstract class AuthUserObservable {
  AuthUser? get user;

  Stream<AuthUser?> get stream;
}

class AuthUserHolder extends StateNotifier<AuthUser?>
    implements AuthUserObservable {
  AuthUserHolder() : super(null);

  @override
  AuthUser? get user => state;

  @override
  AuthUser? get state => super.state;

  bool _isOnline = false;
  bool get isOnline => _isOnline;

  void setUser({required AuthUser? user, bool isOnline = true}) {
    if (_isOnline) {
      _isOnline = _isOnline || isOnline;
    }
    if (user != state) {
      state = user;
    }
  }
}
