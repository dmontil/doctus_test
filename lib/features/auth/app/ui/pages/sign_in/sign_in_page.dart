//IMPORT EXTERN APP
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/extensions/snackbar_extensions.dart';
import 'package:doctus_test/features/auth/index.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      bloc: locator<SignInCubit>(),
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          context.showErrorSnackBar(
            message: state.errorMessage ?? 'error sigin',
          );
        }
      },
      child: const SignInEmailForm(),
    );
  }
}
