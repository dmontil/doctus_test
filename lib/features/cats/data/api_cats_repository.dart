import 'package:doctus_test/features/cats/data/dtos/cat_dto.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';

class ApiCatsRepository extends CatsRepository{
  @override
  Future<CatDTO> getCat() {
    // TODO: implement getCat
    throw UnimplementedError();
  }

}