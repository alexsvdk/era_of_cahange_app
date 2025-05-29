import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_links_config.freezed.dart';
part 'app_links_config.g.dart';

@freezed
abstract class AppLinksConfig with _$AppLinksConfig {
  static const name = 'app_links';

  const factory AppLinksConfig({
    required String privacyPolicyUrl,
    required String termsOfServiceUrl,
    required String personalDataProcessingUrl,
    required String authorRightsUrl,
  }) = _AppLinksConfig;

  const AppLinksConfig._();

  factory AppLinksConfig.fromJson(Map<String, dynamic> json) =>
      _$AppLinksConfigFromJson(json);

  static const defaultValue = AppLinksConfig(
    privacyPolicyUrl: 'https://eraperemen.info/politika-konfidenczialnosti-2',
    termsOfServiceUrl: 'https://eraperemen.info/publichnaya-oferta-2',
    personalDataProcessingUrl:
        'https://eraperemen.info/soglasie-na-obrabotku-i-rasprostranenie-personalnyh-dannyh',
    authorRightsUrl: 'https://eraperemen.info/politika-avtorskih-prav',
  );
}
