import 'package:doctus_test/core/http/http_service.dart';
import 'package:doctus_test/core/utils/storage/persistant_storage.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:doctus_test/features/cats/data/api_cats_repository.dart';
import 'package:doctus_test/features/cats/data/mock_cats_repository.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_cubit.dart';
import 'package:doctus_test/features/start_app/data/repositories/mock_api_start_app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:doctus_test/core/utils/device_info/device_info.dart';
import 'package:doctus_test/core/utils/remote_config/remote_config.dart';
import 'package:doctus_test/features/auth/index.dart';

GetIt locator = GetIt.instance;
const useMocks = true;
Future<void> setupLocator(
    SharedPreferences sharedPreferences, String baseUrl) async {
  locator.registerLazySingleton<AppRemoteConfig>(
    () => RemoteConfigImpl(),
  );
  locator.registerLazySingleton<AppDeviceInfo>(
    () => DeviceInfoImpl()..init(),
  );
  locator.registerLazySingleton<PersistentStorage>(
    () => PersistentStorage(sharedPreferences: sharedPreferences),
  );
  locator
      .registerLazySingleton<HttpService>(() => HttpService(baseUrl: baseUrl));

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

  _registerSingleton(
    CatsCubit(
      catsRepository: useMocks ? MockCatsRepository() : ApiCatsRepository(),
    ),
  );
}

void _registerSingleton<T extends Cubit<dynamic>>(T cubit) {
  if (!locator.isRegistered<T>()) {
    locator.registerSingleton<T>(cubit);
  }
}
