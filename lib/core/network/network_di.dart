import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/auth_di.dart';
import '../config/config_di.dart';
import '../info/info_di.dart';
import 'domain/dio_accept_language_interceptor.dart';
import 'domain/dio_factory.dart';
import 'domain/dio_user_agent_interceptor.dart';

final class NetworkDi {
  NetworkDi._();

  static final _dioAcceptLanguageInterceptor = Provider(
    (ref) => DioAcceptLanguageInterceptor(),
  );

  static final _dioUserAgentInterceptor = Provider(
    (ref) => DioUserAgentInterceptor(ref.watch(InfoDi.appInfo)),
  );

  static final _dioFactory = Provider(
    (ref) => DioFactory(
      ref.watch(_dioAcceptLanguageInterceptor),
      ref.watch(_dioUserAgentInterceptor),
    ),
  );

  /// A dio without authentication
  static final rawDio = Provider(
    (ref) => ref
        .watch(_dioFactory)
        .createRawDio(config: ref.watch(ConfigDi.network)),
  );

  /// A dio with authentication
  static final authDio = Provider((ref) {
    final authInterceptorFactory = ref.watch(AuthDi.authInterceptorFactory);
    final dioFactory = ref.watch(_dioFactory);
    return dioFactory.createAuthificatedDio(
      authInterceptorFactory: authInterceptorFactory,
      networkConfig: ref.watch(ConfigDi.network),
    );
  });
}
