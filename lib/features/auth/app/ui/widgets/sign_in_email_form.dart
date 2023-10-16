import 'package:doctus_test/core/ui/styles/app_text_style.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Iniciar sesión',
              style: AppTextStyle.h1,
            ),
            gapH16,
            _PasswordInput(),
            gapH16,
            _LoginButton(),
            gapH16,
          ],
        ),
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
                state.password.isNotValid &&  state.password.value.isNotEmpty ? 'Valid password only use {},[],(), and empty space' : null,
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
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : SizedBox(
                width: double.infinity,
                child: CtaButton(onPressed: state.password.isValid
                      ? () => locator<SignInCubit>().sigInWithCredentials()
                      : null,
                  text: 'Iniciar sessión',
                  color: Colors.orange,
                ),
              );
      },
    );
  }
}
