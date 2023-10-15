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
    } else if (!RegexPattern.passwordBrackets.hasMatch(value)) {
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
