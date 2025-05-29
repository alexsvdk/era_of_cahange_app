import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/config_di.dart';
import 'domain/app_links_launcher.dart';
import 'domain/app_router_factory.dart';
import 'domain/app_navigator.dart';

class NavigationDi {
  NavigationDi._();

  static final _appRouterFactory = Provider(
    (ref) => AppRouterFactory(ref.watch(ConfigDi.debug.notifier)),
  );

  static final appLinksLauncher = Provider(
    (ref) => AppLinksLauncher(ref.watch(ConfigDi.appLinks.notifier)),
  );

  static final appNavigator = Provider(
    (ref) => AppNavigator(ref.watch(_appRouterFactory)),
  );
}
