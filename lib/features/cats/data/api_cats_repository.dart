import 'dart:convert';

import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/http/endpoints.dart';
import 'package:doctus_test/core/http/http_service.dart';
import 'package:doctus_test/features/cats/data/dtos/cat_dto.dart';
import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:doctus_test/features/cats/domain/repositories/cats_repository.dart';

class ApiCatsRepository extends CatsRepository {
  final HttpService _httpService = locator<HttpService>();
  @override
  Future<Cat> getCat() async {
    try {
      final response = await _httpService.get(
        endpoint: Endpoints.cat,
      );
      if (response.statusCode != 200) throw Exception();
      final List<dynamic> jsonResponse = json.decode(response.body);

      CatDTO catDTO = CatDTO.fromJson(jsonResponse[0]);
      return Cat(id: catDTO.id, image: catDTO.url);
    } catch (e) {
      throw Exception();
    }
  }
}
