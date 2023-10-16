import 'package:doctus_test/features/cats/data/dtos/cat_dto.dart';

abstract class CatsRepository{
  Future<CatDTO> getCat();
}