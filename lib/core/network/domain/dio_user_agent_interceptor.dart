import 'package:dio/dio.dart';

import '../../info/domain/app_info.dart';

class DioUserAgentInterceptor extends Interceptor {
  final AppInfo _info;

  DioUserAgentInterceptor(this._info);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await _info.ensureInitialized();

    options.headers['User-Agent'] = _info.userAgent;

    handler.next(options);
  }
}
