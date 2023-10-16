import 'package:doctus_test/features/cats/data/dtos/cat_dto.dart';
import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';

class MockCatsRepository implements CatsRepository{
  @override
  Future<Cat> getCat() {
    // TODO: implement getCat
    throw UnimplementedError();
  }

}