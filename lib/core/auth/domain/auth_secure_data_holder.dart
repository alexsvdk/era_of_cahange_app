import 'package:state_notifier/state_notifier.dart';

import '../models/auth_secure_data.dart';

enum AuthSecureDataHolderSetTokenSource {
  interceptorDelete,
  interceptorWrite,
  cacheManagerInit,
  refreshManagerSuccess,
  refreshManagerFaulure,
  authManagerSignIn,
  authManagerSignUp,
  authManagerSignOut,
}

class AuthSecureDataHolder extends StateNotifier<AuthSecureData?> {
  AuthSecureDataHolder() : super(null);

  @override
  AuthSecureData? get state => super.state;

  void setData({
    required AuthSecureData? data,
    required AuthSecureDataHolderSetTokenSource source,
  }) {
    if (data != state) {
      state = data;
    }
  }
}
