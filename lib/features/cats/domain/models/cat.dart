import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat.freezed.dart';
part 'cat.g.dart';

@freezed
class Cat with _$Cat {
  const factory Cat({
    required String id,
    required String image,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) =>
      _$CatFromJson(json);
}