import 'dart:async';

import '../../arch/async_lifecycle.dart';
import '../../dao/daos/auth_user_dao.dart';
import '../models/auth_user.dart';
import 'auth_user_holder.dart';

class AuthUserCacheManager with AsyncLifecycle {
  final AuthUserDao _userDao;
  final AuthUserHolder _userHolder;

  AuthUserCacheManager(this._userDao, this._userHolder);

  StreamSubscription? _sub;

  @override
  Future<void> init() async {
    final user = await _userDao.getUser();
    if (user != null) {
      _userHolder.setUser(user: user, isOnline: false);
    }

    _sub = _userHolder.stream.asyncMap(_onUserChanged).listen(null);
  }

  Future<void> _onUserChanged(AuthUser? user) {
    if (user == null) {
      return _userDao.clear();
    } else {
      return _userDao.saveUser(user);
    }
  }

  @override
  Future<void> dispose() async {
    await _sub?.cancel();
    _sub = null;
  }
}
