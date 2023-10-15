import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/ui/styles/app_input_decorations.dart';
import 'package:doctus_test/core/ui/styles/app_spaces.dart';
import 'package:doctus_test/core/ui/widgets/buttons/cta_button.dart';
import 'package:doctus_test/features/auth/index.dart';

class SignInEmailForm extends StatelessWidget {
  const SignInEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Iniciar sesión',
          ),
          gapH16,
          _PasswordInput(),
          gapH8,
          _LoginButton(),
          gapH12,
        ],
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      bloc: locator<SignInCubit>(),
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          onChanged: (password) =>
              locator<SignInCubit>().passwordChanged(password),
          obscureText: true,
          decoration: AppInputsDecorations.editProfileInput(
            context: context,
            hintText: 'Password',
            labelText: 'Password',
          ).copyWith(
            errorText:
                state.password.isNotValid ? 'Please enter a valid password' : null,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      bloc: locator<SignInCubit>(),
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : SizedBox(
                width: double.infinity,
                child: CtaButton(
                  onPressed: state.password.isValid
                      ? () => locator<SignInCubit>().sigInWithCredentials()
                      : null,
                  text: 'Login button',
                  color: Colors.orange,
                ),
              );
      },
    );
  }
}
