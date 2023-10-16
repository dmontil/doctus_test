import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_cubit.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';
import 'package:doctus_test/features/cats/app/ui/widgets/loading_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsList extends StatelessWidget {
  const CatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: BlocBuilder<CatsCubit, CatsState>(
          bloc: locator<CatsCubit>(),
          builder: (context, state) {
            if (state.status.isLoading) {
              return const LoadingPlaceHolder();
            }
            if (state.cats.isNotEmpty) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.cats.length,
                  itemBuilder: (context, index) {
                    return Image.network(state.cats[index].image);
                  });
            }
            return const SizedBox.shrink();
          }),
    );
  }
}
