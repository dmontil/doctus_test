import 'package:doctus_test/features/auth/index.dart';
import 'package:doctus_test/features/auth/data/dtos/auth_dto.dart';

abstract class AuthRepository {
  Future<AuthDTO> signInWithPassword({
    required String password,
  });

}
