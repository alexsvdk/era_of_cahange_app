import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:fresh_dio/fresh_dio.dart';

import '../models/auth_token.dart';
import 'auth_secure_data_holder.dart';
import 'auth_token_refresh_manager.dart';

class DioAuthInterceptorFactory {
  final AuthSecureDataHolder _secureDataHolder;
  final AuthTokenRefreshManager _refreshManager;

  late final TokenStorage<AuthToken> _tokenStorage =
      _TokenHolderToStorageAdapter(_secureDataHolder);

  DioAuthInterceptorFactory(this._secureDataHolder, this._refreshManager);

  Interceptor createAuthInterceptor({required Dio rawDio}) {
    return Fresh<AuthToken>(
      tokenStorage: _tokenStorage,
      tokenHeader: tokenHeader,
      refreshToken: refreshToken,
      httpClient: rawDio,
    );
  }

  @visibleForTesting
  Map<String, String> tokenHeader(AuthToken token) => {
    'Authorization': 'Bearer ${token.accessToken}',
  };

  @visibleForTesting
  Future<AuthToken> refreshToken(AuthToken? token, Dio client) async =>
      _refreshManager.requireRefresh();
}

class _TokenHolderToStorageAdapter implements TokenStorage<AuthToken> {
  final AuthSecureDataHolder _secureDataHolder;

  _TokenHolderToStorageAdapter(this._secureDataHolder);

  @override
  Future<void> delete() async => _secureDataHolder.setData(
    data: null,
    source: AuthSecureDataHolderSetTokenSource.interceptorDelete,
  );

  @override
  Future<AuthToken?> read() => Future.value(_secureDataHolder.state?.token);

  @override
  Future<void> write(AuthToken token) async => _secureDataHolder.setData(
    data: _secureDataHolder.state?.copyWith(token: token),
    source: AuthSecureDataHolderSetTokenSource.interceptorWrite,
  );
}
