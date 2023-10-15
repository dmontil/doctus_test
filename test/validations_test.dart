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
    test('Value : ((((((((), return false', () {
      expect(validatePassword('(((((((()'), false);
    });
  });
}

bool validatePassword(String password) {
  final List<bool> checks = [];
   int skipSteps = 0;
  if (password.isEmpty) return false;

  Map<String, String> validCharacters = {'{': '}', '[': ']', '(': ')', '': ''};
  RegExp regex = RegExp(r'^[{}()\[\]]*$');

  if (regex.hasMatch(password)) {
    List<String> charList = password.split('');
    if (charList.length % 2 != 0) return false;
    final cheecksNeeded = charList.length / 2;
    for (var i = 0; i < cheecksNeeded; i++) {
      i = i +skipSteps;
      String firtsValue = charList[i];
      String secondValue = charList[i +1];
      String opossiteValue = charList[charList.length - (1+ i)];
      if (validCharacters.containsKey(firtsValue) && validCharacters[firtsValue]  == secondValue){
        checks.add(true);
        skipSteps ++;
      }else  if (validCharacters.containsKey(firtsValue) &&
          validCharacters[firtsValue] == opossiteValue ) {
        checks.add(true);
      } else {
        return false;
      }
    }
    return checks.every((e) => e == true);
  }
  return false;
}
