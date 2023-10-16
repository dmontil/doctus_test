import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/extensions/snackbar_extensions.dart';
import 'package:doctus_test/core/ui/styles/app_colors.dart';
import 'package:doctus_test/core/ui/styles/app_spaces.dart';
import 'package:doctus_test/core/ui/widgets/buttons/cta_button.dart';
import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encuentra tu gato'),
      ),
      body: BlocConsumer<CatsCubit, CatsState>(
        bloc: locator<CatsCubit>(),
        listener: (context, state) {
          if (state.status.isError) {
            context.showErrorSnackBar(
              message: 'Error al obtener el gato',
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Text('Your cat'),
              gapH12,
              if (state.cats.isNotEmpty)
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.cats.length,
                    itemBuilder: (context, index) {
                      return Image.network(state.cats[index].image);
                    }),
              Placeholder(
                fallbackHeight: 30,
              ),
              gapH12,
              CtaButton(
                  onPressed: () => locator<CatsCubit>().getCat(),
                  text: 'Busca otro gato',
                  color: AppColors.priceBoxSelectedBackground)
            ],
          );
        },
      ),
    );
  }
}
