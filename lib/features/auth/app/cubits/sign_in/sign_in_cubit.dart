import 'package:bloc/bloc.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/exceptions/exceptions.dart';
import 'package:doctus_test/core/utils/storage/persistant_storage.dart';
import 'package:doctus_test/core/validations/password.dart';
import 'package:doctus_test/features/auth/domain/constants/auth_constants.dart';
import 'package:doctus_test/features/auth/index.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_cubit.dart';
import 'package:formz/formz.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required this.authRepository,
  }) : super(const SignInState());

  final AuthRepository authRepository;

  void resetState() {
    emit(const SignInState());
  }

  void passwordChanged(String value) {
    final password = PasswordInput.dirty(value: value);
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  Future<void> sigInWithCredentials() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      final userLogged = await authRepository.signInWithPassword(
        password: state.password.value,
      );
      await _logUserInApp(userLogged);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      _checkError(e);
    }
  }

  Future<void> _logUserInApp(AuthDTO signInDTO) async {
    locator<PersistentStorage>()
        .write(key: AuthConstants.token, value: signInDTO.token);
    locator<StartAppCubit>().init();
  }

  void _checkError(e) {
    if (e is AppException) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.details.message,
        ),
      );
    };
  }
}
