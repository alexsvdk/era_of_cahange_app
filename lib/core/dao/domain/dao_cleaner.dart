import '../daos/base_dao.dart';

class DaoCleaner {
  final List<BaseDao> daos;

  DaoCleaner(this.daos);

  Future<void> clearAll() => Future.wait(daos.map((dao) => dao.clear()));
}
