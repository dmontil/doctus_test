import 'package:doctus_test/features/home/domain/cats_repository.dart';

class MockCatsRepository implements CatsRepository{
  @override
  Future<String> getCat() {
    // TODO: implement getCat
    throw UnimplementedError();
  }

}