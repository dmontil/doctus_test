import 'package:doctus_test/features/auth/data/dtos/auth_dto.dart';
import 'package:doctus_test/features/auth/domain/repositories/auth_repository.dart';

class MockAuthRepository extends AuthRepository{
  @override
  Future<AuthDTO> signInWithPassword({required String password}) {
    // TODO: implement signInWithPassword
    throw UnimplementedError();
  }
  
}