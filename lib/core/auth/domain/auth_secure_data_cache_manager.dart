import 'dart:async';

import 'package:flutter/foundation.dart';
import '../../arch/async_lifecycle.dart';
import '../../dao/domain/auth_user_dao.dart';
import '../data/auth_cache.dart';
import '../models/auth_secure_data.dart';
import 'auth_secure_data_holder.dart';
import 'auth_user_holder.dart';

class AuthSecureDataCacheManager with AsyncLifecycle {
  final AuthCache _authCache;
  final AuthSecureDataHolder _secureDataHolder;
  final AuthUserHolder _userHolder;
  final AuthUserDao _userDao;

  StreamSubscription? _sub;

  AuthSecureDataCacheManager(
    this._authCache,
    this._secureDataHolder,
    this._userHolder,
    this._userDao,
  );

  @override
  Future<void> init() async {
    await _sub?.cancel();

    final secureData = await _authCache.readSecureData();
    if (secureData != null) {
      _secureDataHolder.setData(
        data: secureData,
        source: AuthSecureDataHolderSetTokenSource.cacheManagerInit,
      );
    } else {
      if (_userHolder.state != null) {
        _userHolder.setUser(user: null);
      }
      _userDao.clear();
    }

    _sub = _secureDataHolder.stream
        .asyncMap((state) => onSecureDataChanged(state))
        .listen(null);
  }

  @visibleForTesting
  Future<void> onSecureDataChanged(AuthSecureData? state) async {
    if (state == null) {
      await _authCache.deleteSecureData();
    } else {
      await _authCache.writeSecureData(state);
    }
  }

  @override
  Future<void> dispose() async {
    await _sub?.cancel();
    _sub = null;
  }
}
