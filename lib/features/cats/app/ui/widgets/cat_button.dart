import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/ui/styles/app_colors.dart';
import 'package:doctus_test/core/ui/widgets/buttons/cta_button.dart';
import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatButton extends StatelessWidget {
  const CatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatsCubit, CatsState>(
      bloc: locator<CatsCubit>(),
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return CtaButton(
            onPressed: state.status.isLoading
                ? null
                : () => locator<CatsCubit>().getCat(),
            text: 'Buscar gato',
            color: AppColors.black);
      },
    );
  }
}
