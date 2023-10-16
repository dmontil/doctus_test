import 'package:doctus_test/core/routing/app_router.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/core/ui/widgets/app_modal.dart';
import 'package:doctus_test/core/ui/widgets/dialogs/need_update_dialog.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_cubit.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StartAppPage extends StatelessWidget {
  const StartAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StartAppCubit, StartAppState>(
      bloc: locator<StartAppCubit>()..init(),
      listener: (context, state) {
        if (state.appVersionConfig != null &&
            state.appVersionConfig!.needShowUpdate) {
          return ShowModal.showBottomSheet(
              isDismissible: false,
              context: context,
              widget: const Material(child: NeedUpdateDialog()));
        }
        if (state.error) {
          return context.goNamed(AppRoutes.signIn.name);
        }
        if (state.isLogged != true) {
          return context.goNamed(AppRoutes.signIn.name);
        }
        return context.goNamed(AppRoutes.home.name);
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            child:  const Center(
              child: Text('Loading...'),
            )
          
        ));
      },
    );
  }
}
