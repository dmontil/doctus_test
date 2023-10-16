import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cats_state.freezed.dart';

@freezed
class CatsState with _$CatsState {
  const factory CatsState({
    required List<Cat> cats,
    required Status status,
  }) = _CatsState;

}