import 'package:dio/dio.dart';

import '../../../gen/strings.g.dart';

class DioAcceptLanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final locale = LocaleSettings.instance.currentLocale;
    final countryCode = locale.countryCode;
    final languageCode = locale.languageCode;

    final acceptLanguage =
        '$languageCode${countryCode != null ? '-$countryCode' : ''}';
    options.headers['Accept-Language'] = acceptLanguage;

    handler.next(options);
  }
}
