import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../arch/initialize_queue.dart';
import '../dao/dao_di.dart';
import '../navigation/navigation_di.dart';
import '../network/network_di.dart';
import 'data/auth_api.dart';
import 'data/auth_cache.dart';
import 'domain/auth_dio_interceptor.dart';
import 'domain/auth_logout_navigation_manager.dart';
import 'domain/auth_manager.dart';
import 'domain/auth_secure_data_cache_manager.dart';
import 'domain/auth_secure_data_holder.dart';
import 'domain/auth_token_refresh_manager.dart';
import 'domain/auth_user_cache_manager.dart';
import 'domain/auth_user_holder.dart';

final class AuthDi {
  AuthDi._();

  // Core holders
  static final _authSecureDataHolder = StateNotifierProvider(
    (ref) => AuthSecureDataHolder(),
  );

  static final _authUserHolder = StateNotifierProvider(
    (ref) => AuthUserHolder(),
  );

  // Cache
  static final _authCache = Provider((ref) => const AuthCache());

  // API
  static final _authApi = Provider(
    (ref) => AuthApi(ref.watch(NetworkDi.rawDio)),
  );

  // Managers
  static final _authManager = Provider(
    (ref) => AuthManager(
      ref.watch(_authApi),
      ref.watch(_authSecureDataHolder.notifier),
      ref.watch(_authUserHolder.notifier),
    ),
  );

  static final _authTokenRefreshManager = Provider(
    (ref) => AuthTokenRefreshManager(
      ref.watch(_authApi),
      ref.watch(_authSecureDataHolder.notifier),
      ref.watch(_authUserHolder.notifier),
    ),
  );

  static final _authSecureDataCacheManager = Provider(
    (ref) => AuthSecureDataCacheManager(
      ref.watch(_authCache),
      ref.watch(_authSecureDataHolder.notifier),
      ref.watch(_authUserHolder.notifier),
      ref.watch(DaoDi.authUserDao),
    ),
  );

  static final _authUserCacheManager = Provider(
    (ref) => AuthUserCacheManager(
      ref.watch(DaoDi.authUserDao),
      ref.watch(_authUserHolder.notifier),
    ),
  );

  static final _authLogoutNavigationManager = Provider(
    (ref) => AuthLogoutNavigationManager(
      ref.watch(NavigationDi.appNavigator),
      ref.watch(_authSecureDataHolder.notifier),
    ),
  );

  // Interceptor
  static final _authDioInterceptorFactory = Provider(
    (ref) => DioAuthInterceptorFactory(
      ref.watch(_authSecureDataHolder.notifier),
      ref.watch(_authTokenRefreshManager),
    ),
  );

  // Public API

  /// User holder for managing the current authenticated user
  static final authUserObservable = Provider(
    (ref) => ref.watch(_authUserHolder),
  );

  /// Auth manager for handling sign in, sign up, and sign out operations
  static final authManager = Provider((ref) => ref.watch(_authManager));

  /// Factory for creating auth interceptors
  static final authInterceptorFactory = Provider(
    (ref) => ref.watch(_authDioInterceptorFactory),
  );

  static final authInitializeQueue = Provider(
    (ref) => InitializeQueue(
      [
        {
          ref.watch(_authSecureDataCacheManager),
          ref.watch(_authUserCacheManager),
        },
      ],
      unawaitedQueue: [
        {
          ref.watch(_authTokenRefreshManager),
          ref.watch(_authLogoutNavigationManager),
        },
      ],
    ),
  );
}
