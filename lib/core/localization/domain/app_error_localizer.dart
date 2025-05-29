import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../gen/strings.g.dart';

class AppErrorLocalizer {
  Translations get _locale =>
      LocaleSettings.instance.currentLocale.translations;

  String localizeError(Object? error) {
    final tr = _locale.error;

    if (error is String) return error;
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          return tr.requestCancelled;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return tr.requestTimeout;
        case DioExceptionType.badCertificate:
          return tr.invalidCertificate;
        case DioExceptionType.connectionError:
          return tr.connectionError;
        case DioExceptionType.badResponse:
          final responseData = error.response?.data;
          if (responseData is Map<String, dynamic>) {
            final descriptions = responseData['error_description'] as List?;
            if (descriptions != null && descriptions.isNotEmpty) {
              return descriptions.first.toString();
            }
          }
          return tr.genericError;
        case DioExceptionType.unknown:
          return tr.genericError;
      }
    } else if (kDebugMode) {
      return error.toString();
    } else {
      return tr.genericError;
    }
  }
}
