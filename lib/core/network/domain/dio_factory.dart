import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

import '../../auth/domain/auth_dio_interceptor.dart';
import '../../config/models/network_config.dart';
import 'dio_accept_language_interceptor.dart';
import 'dio_user_agent_interceptor.dart';

class DioFactory {
  final DioAcceptLanguageInterceptor _dioAcceptLanguageInterceptor;
  final DioUserAgentInterceptor _dioUserAgentInterceptor;

  DioFactory(this._dioAcceptLanguageInterceptor, this._dioUserAgentInterceptor);

  /// Create a new Dio instance with all the necessary interceptors
  Dio createRawDio({required NetworkConfig config}) {
    // base options
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        maxRedirects: 5,
        followRedirects: true,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
      ),
    );

    /*
    if (kDebugMode) {
      dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          final client = HttpClient();
          client.findProxy = (uri) {
            return 'PROXY localhost:9091';
          };
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        },
        validateCertificate: (cert, host, port) {
          return true;
        },
      );
    }
    */

    // performance
    // dio.interceptors.add(DioFirebasePerformanceInterceptor());

    // retry
    if (config.maxRetries > 0) {
      dio.interceptors.add(
        RetryInterceptor(dio: dio, retries: config.maxRetries),
      );
    }

    // accept language
    dio.interceptors.add(_dioAcceptLanguageInterceptor);

    // user agent
    dio.interceptors.add(_dioUserAgentInterceptor);

    return dio;
  }

  Dio createAuthificatedDio({
    required DioAuthInterceptorFactory authInterceptorFactory,
    required NetworkConfig networkConfig,
  }) {
    final rawDio = createRawDio(config: networkConfig);
    final newDio = createRawDio(config: networkConfig);

    newDio.interceptors.add(
      authInterceptorFactory.createAuthInterceptor(rawDio: rawDio),
    );

    return newDio;
  }
}
