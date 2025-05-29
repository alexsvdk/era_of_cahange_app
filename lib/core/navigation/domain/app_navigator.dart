import 'package:flutter/widgets.dart';

import 'app_router_factory.dart';
import '../models/app_routes.dart';

class AppNavigator {
  // private
  final AppRouterFactory _appRouterFactory;

  late final _goRouter = _appRouterFactory.createRouter();

  // public
  RouterConfig<Object> get routerConfig => _goRouter;

  AppNavigator(this._appRouterFactory);

  void signUp({bool usePush = true}) {
    if (usePush) {
      _goRouter.push(AppRoutes.signUp.path);
    } else {
      _goRouter.go(AppRoutes.signUp.path);
    }
  }

  void signIn() {
    _goRouter.go(AppRoutes.signIn.path);
  }

  void home() {
    _goRouter.go(AppRoutes.defaultRoute.path);
  }

  void settings() {
    _goRouter.push(AppRoutes.settings.path);
  }

  void back() {
    if (_goRouter.canPop()) {
      _goRouter.pop();
    }
  }

  void debug() {
    _goRouter.push(AppRoutes.debug.path);
  }
}
