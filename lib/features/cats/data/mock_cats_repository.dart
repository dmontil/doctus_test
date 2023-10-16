import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';

class MockCatsRepository implements CatsRepository{
  @override
  Future<Cat> getCat() async {
    return  const Cat(
      image: 'https://www.kevinwanke.com/wp-content/uploads/2021/06/marcel-friedrich-XC_28Kk25F0-unsplash.jpg',
      id: '1',
    );
  }

}