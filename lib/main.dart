import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/navigation/navigation_di.dart';
import 'gen/strings.g.dart';
import 'ui/shimmer.dart';
import 'ui/theme.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      LocaleSettings.useDeviceLocale();

      runApp(ProviderScope(child: TranslationProvider(child: const MyApp())));
    },
    (error, stack) {
      if (kDebugMode) {
        print('Caught error: $error');
        print('Stack trace: $stack');
      }

      // FirebaseCrashlytics.instance.recordError(error, stack)
    },
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appNavigator = ref.watch(NavigationDi.appNavigator);

    return MaterialApp.router(
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: appNavigator.routerConfig,
      builder: (context, child) {
        return Shimmer(child: child);
      },
    );
  }
}
