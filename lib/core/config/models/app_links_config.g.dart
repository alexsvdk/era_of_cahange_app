// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_links_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppLinksConfig _$AppLinksConfigFromJson(Map<String, dynamic> json) =>
    _AppLinksConfig(
      privacyPolicyUrl: json['privacy_policy_url'] as String,
      termsOfServiceUrl: json['terms_of_service_url'] as String,
      personalDataProcessingUrl: json['personal_data_processing_url'] as String,
      authorRightsUrl: json['author_rights_url'] as String,
    );

Map<String, dynamic> _$AppLinksConfigToJson(_AppLinksConfig instance) =>
    <String, dynamic>{
      'privacy_policy_url': instance.privacyPolicyUrl,
      'terms_of_service_url': instance.termsOfServiceUrl,
      'personal_data_processing_url': instance.personalDataProcessingUrl,
      'author_rights_url': instance.authorRightsUrl,
    };
