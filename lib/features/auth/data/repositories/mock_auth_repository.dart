import 'package:doctus_test/features/auth/data/dtos/auth_dto.dart';
import 'package:doctus_test/features/auth/domain/repositories/auth_repository.dart';

class MockAuthRepository extends AuthRepository{
  @override
  Future<AuthDTO> signInWithPassword({required String password})async  {
    await Future.delayed(const Duration(seconds: 1));

   return AuthDTO(token: 'token');
  }
  
}