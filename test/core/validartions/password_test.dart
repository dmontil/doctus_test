import 'package:doctus_test/core/validations/password.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Password Validation', () {
    test('Empty value return true', () {
      expect(validatePassword(''), true);
    });
    test('Password contains invalid character , return false', () {
      expect(validatePassword('a'), false);
    });
    test('Value : {}, return true', () {
      expect(validatePassword('{}'), true);
    });

    test('Value : {}[](), return true', () {
      expect(validatePassword('{}[]()'), true);
    });
    test('Value : {), return false', () {
      expect(validatePassword('{)'), false);
    });

    test('Value : [{]}, return false', () {
      expect(validatePassword('[{]}'), false);
    });
    test('Value : {([])}, return true', () {
      expect(validatePassword('{([])}'), true);
    });
    test('Value : {(b[])}b, return false', () {
      expect(validatePassword('{(b[])}b'), false);
    });
    test('Value : ((((((((), return false', () {
      expect(validatePassword('(((((((()'), false);
    });
    test('Value : ((a((((((), return false', () {
      expect(validatePassword('(a(((((()'), false);
    });
    test('Value : {([])}, return true', () {
      expect(validatePassword('{([])}'), true);
    });

  });
}

