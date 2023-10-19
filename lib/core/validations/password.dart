import 'package:doctus_test/core/validations/regex_pattern.dart';
import 'package:formz/formz.dart';

// Define input validation errors
enum PasswordValidationError { empty, invalid }

// Extend FormzInput and provide the input type and error type.
class PasswordInput extends FormzInput<String, PasswordValidationError> {
  // Call super.pure to represent an unmodified form input.
  const PasswordInput.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  // Override validator to handle validating a given input value.
  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (!validatePassword(value)) {
      return PasswordValidationError.invalid;
    }

    return null;
  }
}

extension on PasswordValidationError {
  String text() {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'Please ensure the email entered is valid';
      case PasswordValidationError.empty:
        return 'Please enter an email';
    }
  }
}

bool validatePassword(String password) {
  Map<String, String> matchingBrackets = {
    '{': '}',
    '[': ']',
    '(': ')',
    ' ': ' '
  };
  final Set<String> openBrackets = {'{', '[', '(', ' '};
  final List<String> stack1 = [];

  if (password.isEmpty) return true;
  if (!RegexPattern.passwordBrackets.hasMatch(password)) return false;

  for (var i = 0; i < password.length; i++) {
    var char = password[i];
    if (openBrackets.contains(char)) {
      stack1.add(char);
    } else if (stack1.isEmpty || matchingBrackets[stack1.removeLast()] != char) {
      return false;
    }
  }

  return stack1.isEmpty;


  //My solution
  // final checksNeeded = password.length / 2;
  // for (var i = 0; i < checksNeeded; i++) {
  //   i = i + skipSteps;
  //   String currentChar = password[i];
  //   String nextChar = password[i + 1];
  //   String oppositeChar = password[password.length - (1 + i)];
  //
  //   if (matchingBrackets.containsKey(currentChar) &&
  //       matchingBrackets[currentChar] == nextChar) {
  //     skipSteps++;
  //   } else if (matchingBrackets.containsKey(currentChar) &&
  //       matchingBrackets[currentChar] != oppositeChar) {
  //     return false;
  //   }
  // }
  // return true;
}
