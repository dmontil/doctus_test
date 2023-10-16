import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';
import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsCubit extends Cubit<CatsState> {
  final CatsRepository _catsRepository;

  CatsCubit({
    required CatsRepository catsRepository,
  })  : _catsRepository = catsRepository,
        super(
          const CatsState(status: Status.initial, cats: []),
        );
//TODO: Add get Cats for create list.
  Future<void> getCat() async {
    emit(state.copyWith(status: Status.loading));
    try {
      final Cat cat = await _catsRepository.getCat();
      emit(state.copyWith(cats: [cat], status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
    }
  }
}
