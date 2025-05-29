import 'package:rxdart/rxdart.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../utils/state_notifier_x.dart';
import '../models/auth_user.dart';

abstract class AuthUserObservable {
  AuthUser get user;

  Stream<AuthUser> get stream;

  Stream<AuthUser> get instantStream => stream.startWith(user);
}

class AuthUserHolder extends StateNotifier<AuthUser?> {
  AuthUserHolder() : super(null);

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

  Stream<AuthUserObservable?> get userObservableStream =>
      instantStream.map((user) => user != null).distinct().map((hasUser) {
        if (hasUser) {
          return _UserObservableImpl(this);
        } else {
          return null;
        }
      });
}

class _UserObservableImpl extends AuthUserObservable {
  final AuthUserHolder _userHolder;

  _UserObservableImpl(this._userHolder);

  AuthUser? _lastUser;

  @override
  AuthUser get user {
    if (_userHolder.state != null) {
      _lastUser = _userHolder.state;
    }
    return _userHolder.state ??
        _lastUser ??
        (throw Exception('User is not set'));
  }

  @override
  late Stream<AuthUser> stream = _userHolder.stream.whereNotNull().doOnData(
    (user) => _lastUser = user,
  );
}
