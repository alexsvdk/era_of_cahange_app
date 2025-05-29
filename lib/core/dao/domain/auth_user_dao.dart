import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../arch/async_lifecycle.dart';
import 'hive_provider.dart';
import '../../auth/models/auth_user.dart';
import '../daos/base_dao.dart';

class AuthUserDao with AsyncLifecycle implements BaseDao {
  final HiveProvider _hiveProvider;

  AuthUserDao(this._hiveProvider);

  static const String _boxName = 'authUserBox';

  late final LazyBox<AuthUser> _box;

  @override
  Future<void> init() async {
    _box = await _hiveProvider.hive.openLazyBox(_boxName);
  }

  Future<AuthUser?> getUser() async {
    await ensureInitialized();
    return _box.get(0);
  }

  Future<void> saveUser(AuthUser user) async {
    await ensureInitialized();
    await _box.put(0, user);
  }

  @override
  Future<void> clear() async {
    await ensureInitialized();
    await _box.clear();
  }

  @override
  Future<void> dispose() async {
    await _box.close();
  }
}
