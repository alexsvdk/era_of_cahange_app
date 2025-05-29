// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';
import '../../config/domain/config.dart';
import '../../config/models/debug_config.dart';
import '../models/app_routes.dart';
import '../ui/dialog_page.dart';

class AppRouterFactory {
  final TypedConfig<DebugConfig> _debugConfig;

  AppRouterFactory(this._debugConfig);

  GoRouter createRouter() {
    return GoRouter(redirect: appRedirect, routes: [
      ]
    );
  }

  GoRoute BottomsheetRoute({
    required String path,
    required GoRouterWidgetBuilder builder,
    bool dismissible = true,
  }) => GoRoute(
    path: path,
    pageBuilder: (context, state) {
      return ModalSheetPage(
        swipeDismissible: dismissible,
        child: builder(context, state),
      );
    },
  );

  GoRoute DialogRoute({
    required String path,
    required GoRouterWidgetBuilder builder,
    bool dismissible = true,
  }) => GoRoute(
    path: path,
    pageBuilder: (context, state) {
      return DialogPage(
        barrierDismissible: dismissible,
        builder: (context) => builder(context, state),
      );
    },
  );

  @visibleForTesting
  String? appRedirect(BuildContext context, GoRouterState state) {
    // default redirect
    final route = AppRoutes.pathMap[state.uri.path];
    if (route == null) {
      return AppRoutes.defaultRoute.path;
    }

    // debug blocked redirect
    if (!_debugConfig.config.enabled && route.isDebug) {
      return AppRoutes.defaultRoute.path;
    }

    /*


        final user = appScope?.auth.userHolder.state;

    // auth redirect
    final authRequired = route.authRequired;
    if (authRequired) {
      if (appScope?.auth.isAuthorized != true) {
        return AppRoutes.signIn.path;
      }
    }

    // email confirmation redirect
    if (route != AppRoutes.emailConfirmation) {
      final emailConfirmed = user?.emailConfirmed;
      if (emailConfirmed == false) {
        return AppRoutes.emailConfirmation.path;
      }
    } else {
      return null;
    }
    */

    // no redirect is needed
    return null;
  }

  @visibleForTesting
  String? defaultRedirectIfAuthorized(
    BuildContext context,
    GoRouterState state,
  ) {
    /*
    final appScope = ScopeProvider.of<AppScope>(context, listen: false);
    if (appScope?.auth.isAuthorized == true) {
      return AppRoutes.defaultRoute.path;
    }
    return null;
    */
  }

  @visibleForTesting
  String? defaultRedirectIfEmailConfirmed(
    BuildContext context,
    GoRouterState state,
  ) {
    /*
    final appScope = ScopeProvider.of<AppScope>(context, listen: false);
    final emailConfirmed = appScope?.user.scope?.data.user.emailConfirmed;
    if (emailConfirmed == true) {
      return AppRoutes.defaultRoute.path;
    }
    return null;
    */
  }
}
