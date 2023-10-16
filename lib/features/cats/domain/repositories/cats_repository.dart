import 'package:doctus_test/features/cats/domain/models/cat.dart';

abstract class CatsRepository{
  Future<Cat> getCat();
}