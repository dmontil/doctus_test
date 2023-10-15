import 'package:doctus_test/features/start_app/domain/repository/start_app_repository.dart';

class MockApiUserSessionRepository extends StartAppRepository {
  @override
  bool getUserLogged() {
    return true;
  }
  @override
  bool isFirstInit() {
    return true;
  }

}
