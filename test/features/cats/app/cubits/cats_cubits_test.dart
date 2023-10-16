import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';
import 'package:mockito/annotations.dart';

import '../../domain/fakes/cat_model_fake.dart';
import '../fakes/cats_state_fake.dart';
import 'cats_cubits_test.mocks.dart';
@GenerateMocks([CatsRepository])

void main() {
  late CatsCubit catsCubit;
  late CatsRepository catsRepository;

  setUp(() {
    catsRepository = MockCatsRepository();
    catsCubit = CatsCubit(catsRepository: catsRepository);
  });

  tearDown(() {
    catsCubit.close();
  });

  group('CatsCubit', () {
    test('cubit initializes correctly', () {
      expect(
        catsCubit.state,
        tInitialState,
      );
    });

    test('When calling getCat, it emits a new state with a cat', () async {
      when(catsRepository.getCat()).thenAnswer((_) async => tCat);

      await catsCubit.getCat();

      expect(
        catsCubit.state,
        tSuccessState,
      );
    });

    test('When calling getCat and an error occurs, it emits an error state', () async {
      when(catsRepository.getCat()).thenThrow(Exception());

      await catsCubit.getCat();

      expect(
        catsCubit.state,
        tErrorState,
      );
    });
  });
}
