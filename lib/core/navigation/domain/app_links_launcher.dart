import 'package:url_launcher/url_launcher_string.dart';

import '../../config/domain/config.dart';
import '../../config/models/app_links_config.dart';

class AppLinksLauncher {
  final TypedConfig<AppLinksConfig> _appLinksConfig;

  AppLinksLauncher(this._appLinksConfig);

  Future<void> launchUrl(String urlString) => launchUrlString(urlString);

  Future<void> launchPrivacyPolicy() {
    return launchUrlString(_appLinksConfig.config.privacyPolicyUrl);
  }

  Future<void> launchTermsOfService() {
    return launchUrlString(_appLinksConfig.config.termsOfServiceUrl);
  }

  Future<void> launchPersonalDataProcessing() {
    return launchUrlString(_appLinksConfig.config.personalDataProcessingUrl);
  }

  Future<void> launchAuthorRights() {
    return launchUrlString(_appLinksConfig.config.authorRightsUrl);
  }
}
