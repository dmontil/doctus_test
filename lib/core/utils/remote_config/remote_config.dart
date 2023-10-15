import 'dart:convert';
import 'dart:io';

import 'package:doctus_test/core/utils/remote_config/remote_config_keys.dart';

abstract class AppRemoteConfig {
  Future<void> init();
  Future<Map<String, dynamic>> getVersions();
  String get getPlatformKey;
}

class RemoteConfigImpl implements AppRemoteConfig {
  @override
  Future<void> init() async {}

  @override
  Future<Map<String, dynamic>> getVersions() async {
    try {
      const version = '1.0';
      return jsonDecode(version) as Map<String, dynamic>;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  String get getPlatformKey {
    if (Platform.isIOS) {
      return RemoteConfigKeys.iosKey;
    }

    return RemoteConfigKeys.androidKey;
  }
}
