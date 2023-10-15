import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class AppException with _$AppException {
  const factory AppException.wrongPassword() = WrongPassword;
  const factory AppException.unknown() = Unknown;
}

class AppExceptionData {
  AppExceptionData(this.code, this.message);
  final String code;
  final String message;

  @override
  String toString() => 'AppExceptionData(code: $code, message: $message)';
}

extension AppExceptionDetails on AppException {
  AppExceptionData get details {
    return when(

      wrongPassword: () => AppExceptionData(
        'wrong-password',
        'wrong-password',
      ),

      unknown: () => AppExceptionData(
        'unknown',
         'unknown',
      ),
    );
  }
}
