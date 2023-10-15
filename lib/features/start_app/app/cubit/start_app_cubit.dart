import 'package:doctus_test/core/utils/storage/persistant_storage.dart';
import 'package:doctus_test/core/utils/device_info/device_info.dart';
import 'package:doctus_test/core/utils/remote_config/app_version_config.dart';
import 'package:doctus_test/core/utils/remote_config/remote_config.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/features/auth/domain/constants/auth_constants.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_state.dart';
import 'package:doctus_test/features/start_app/domain/repository/start_app_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:version/version.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit({
    required StartAppRepository startAppRepository,
    required AppRemoteConfig remoteConfig,
    required AppDeviceInfo deviceInfo,
  })  : _remoteConfig = remoteConfig,
        _startAppRepository = startAppRepository,
        _deviceInfo = deviceInfo,
        super(StartAppState());
  final AppRemoteConfig _remoteConfig;
  final AppDeviceInfo _deviceInfo;

  final StartAppRepository _startAppRepository;

  Future<void> init() async {
    AppVersionConfig appVersionConfig = await checkVersion();
    if (appVersionConfig.needShowUpdate) {
      emit(state.copyWith(
        appVersionConfig: appVersionConfig,
      ));
      return;
    }

    final token =
        await locator<PersistentStorage>().read(key: AuthConstants.token);
    if (token != null) {
      // DanaAnalyticsService.updateUserInfo('${user.email}');
      //  PushNotificationService.updateUserId('${user.uid}');
      await registerCubits();
    }

    emit(StartAppState(
      isLogged: token != null,
      appVersionConfig: appVersionConfig,
      showOnboarding: false,
    ));
  }

  Future<AppVersionConfig> checkVersion() async {
    try {
      await _remoteConfig.init();
      final remoteVersion = await _remoteConfig.getVersions();
      final String currentBuild = _deviceInfo.getCurrentVersion;

      final minVersionStr = remoteVersion['minVersion'].toString();

      Version currentVersion = Version.parse(currentBuild);
      Version minVersion = Version.parse(minVersionStr);

      return AppVersionConfig(
        isLatestVersion: false,
        isVersionNotAllowed: false,
        needShowUpdate: (currentVersion < minVersion),
      );
    } catch (e) {
      return const AppVersionConfig(
          isLatestVersion: false,
          isVersionNotAllowed: false,
          needShowUpdate: false);
    }
  }
}

bool isNullOrEmpty(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  }
  return false;
}
