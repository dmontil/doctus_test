import 'package:doctus_test/core/utils/storage/persistant_storage.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_cubit.dart';
import 'package:doctus_test/features/start_app/data/repositories/mock_api_start_app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:doctus_test/core/utils/device_info/device_info.dart';
import 'package:doctus_test/core/utils/remote_config/remote_config.dart';
import 'package:doctus_test/features/auth/index.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator(SharedPreferences sharedPreferences) async {
  locator.registerLazySingleton<AppRemoteConfig>(
    () => RemoteConfigImpl(),
  );
  locator.registerLazySingleton<AppDeviceInfo>(
    () => DeviceInfoImpl()..init(),
  );
  locator.registerLazySingleton<PersistentStorage>(
    () => PersistentStorage(sharedPreferences: sharedPreferences),
  );

  await registerCubits();
}

registerCubits() async {
  _registerSingleton(
    SignInCubit(
      authRepository: MockAuthRepository(),
    ),
  );

  _registerSingleton(StartAppCubit(
    deviceInfo: locator<AppDeviceInfo>(),
    remoteConfig: locator<AppRemoteConfig>(),
    startAppRepository: MockApiUserSessionRepository(),
  ));
}

void _registerSingleton<T extends Cubit<dynamic>>(T cubit) {
  if (!locator.isRegistered<T>()) {
    locator.registerSingleton<T>(cubit);
  }
}
