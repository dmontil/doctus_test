import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Password Validation', () {
    test('Empty value return false', () {
      expect(validatePassword(''), false);
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
    test('Value : { ([]) }, return true', () {
      expect(validatePassword('{ ([]) }'), true);
    });
  });
}

bool validatePassword(String password) {
  if (password.isEmpty) return false;
  int skipSteps = 0;
  Map<String, String> validCharacters = {
    '{': '}',
    '[': ']',
    '(': ')',
    ' ': ' '
  };
  RegExp regex = RegExp(r'^[{}\[\]\(\)\s]*$');

  if (regex.hasMatch(password)) {
    if (password.length % 2 != 0) return false;
    final cheecksNeeded = password.length / 2;
    for (var i = 0; i < cheecksNeeded; i++) {
      i = i + skipSteps;
      String firtsValue = password[i];
      String secondValue = password[i + 1];
      String opossiteValue = password[password.length - (1 + i)];
      if (validCharacters.containsKey(firtsValue) &&
          validCharacters[firtsValue] == secondValue) {
        skipSteps++;
      } else if (validCharacters.containsKey(firtsValue) &&
          validCharacters[firtsValue] != opossiteValue) {
        return false;
      }
    }
    return true;
  }
  return false;
}
