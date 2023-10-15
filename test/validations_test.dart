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
      expect(validatePassword('{}[]()}'), true);

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
    test('Value : ((((((((), return false', () {
      expect(validatePassword('(((((((()'), false);
    });

  });
}

bool validatePassword(String password){
  //The valid characters:{, }, (, ), [, y ]
  RegExp regex = RegExp(r'^[{}()\[\]]*$');
  return regex.hasMatch(password);

}
