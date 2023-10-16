import 'dart:io';

import 'package:doctus_test/core/utils/remote_config/remote_config_keys.dart';

abstract class AppRemoteConfig {
  Future<void> init();
  Future<double> getVersions();
  String get getPlatformKey;
}

class RemoteConfigImpl implements AppRemoteConfig {
  @override
  Future<void> init() async {}

  @override
  Future<double> getVersions() async {
    try {
     return 1.0;
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
