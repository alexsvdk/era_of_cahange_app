import 'package:package_info_plus/package_info_plus.dart';

import '../../arch/async_lifecycle.dart';

class AppInfo with AsyncLifecycle {
  late final PackageInfo packageInfo;

  String get userAgent =>
      'eraofchange-app/${packageInfo.version} (${packageInfo.buildNumber})';

  @override
  Future<void> init() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  @override
  void dispose() {}
}
