import 'dart:convert';
import 'package:doctus_test/features/cats/domain/models/cat.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture_reader_features.dart';
import 'fakes/cat_model_fake.dart';

void main() {
  group('cats', () { 
    test(
      'Cat fromJson should return a valid model', 
          () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixtureFeature(
            'cat.json', 
            'cats', 
            FixtureType.model,
          ),
        ) as Map<String, dynamic>;
        final Cat result = Cat.fromJson(jsonMap);
        expect(result, tCat);
      },
    );
  });
}
