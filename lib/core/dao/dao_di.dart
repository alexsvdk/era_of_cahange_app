import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../arch/async_lifecycle.dart';
import 'daos/auth_user_dao.dart';
import 'domain/dao_cleaner.dart';
import 'domain/hive_provider.dart';

final class DaoDi {
  DaoDi._();

  static final _hiveProvider = AsyncLifecycleProvider((_) => HiveProvider());

  static final authUserDao = AsyncLifecycleProvider(
    (ref) => AuthUserDao(ref.watch(_hiveProvider)),
  );

  static final _allDaos = [authUserDao];

  static final daoCleaner = Provider(
    (ref) => DaoCleaner(_allDaos.map((e) => ref.watch(e)).toList()),
  );
}
