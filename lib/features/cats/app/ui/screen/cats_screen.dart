import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/extensions/snackbar_extensions.dart';
import 'package:doctus_test/core/ui/styles/app_spaces.dart';
import 'package:doctus_test/core/ui/styles/app_text_style.dart';
import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';
import 'package:doctus_test/features/cats/app/ui/widgets/cat_button.dart';
import 'package:doctus_test/features/cats/app/ui/widgets/cats_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Encuentra tu gato'),
        ),
        body: BlocListener<CatsCubit, CatsState>(
          bloc: locator<CatsCubit>(),
          listener: (context, state) {
            if (state.status.isError) {
              context.showErrorSnackBar(
                message: 'Error al buscar el gato',
              );
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    _Title(),
                    gapH12,
                    CatsList(),
                    gapH12,
                    CatButton(),
                    gapH12,

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tu gato',
      style: AppTextStyle.h1,
    );
  }
}
