import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../../gen/hive_registrar.g.dart';
import '../../arch/async_lifecycle.dart';

class HiveProvider with AsyncLifecycle {
  late final HiveInterface hive;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    hive = Hive;
  }

  @override
  Future<void> dispose() async {
    await hive.close();
  }
}
