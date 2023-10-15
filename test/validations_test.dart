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
  int skipSteps = 0;
  Map<String, String> matchingBrackets = {
    '{': '}',
    '[': ']',
    '(': ')',
    ' ': ' '
  };
  RegExp validPattern = RegExp(r'^[{}\[\]\(\)\s]*$');

  if (password.isEmpty) return false;
  if (password.length % 2 != 0) return false;
  if (!validPattern.hasMatch(password)) return false;

    final cheecksNeeded = password.length / 2;
    for (var i = 0; i < cheecksNeeded; i++) {
      i = i + skipSteps;
      String currentChar = password[i];
      String nextChar = password[i + 1];
      String oppositeChar = password[password.length - (1 + i)];

      if (matchingBrackets.containsKey(currentChar) &&
          matchingBrackets[currentChar] == nextChar) {
        skipSteps++;
      } else if (matchingBrackets.containsKey(currentChar) &&
          matchingBrackets[currentChar] != oppositeChar) {
        return false;
      }
    }
    return true;

}
