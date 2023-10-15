import 'package:doctus_test/features/home/app/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:doctus_test/core/di/locator.dart';
import 'package:doctus_test/features/auth/index.dart';
import 'package:doctus_test/features/start_app/app/cubit/start_app_cubit.dart';
import 'package:doctus_test/features/start_app/app/ui/start_app_page.dart';

import 'go_router_refresh_stream.dart';

enum AppRoutes {
  signIn,
  profile,
  recoverPassword,
  signUp,
  onboarding,
  home,
  startApp
}
//final useBloc = locator<StartAppCubit>();
final goRouter = GoRouter(
 // refreshListenable: GoRouterRefreshStream(useBloc.stream),
  initialLocation: '/',
  debugLogDiagnostics: true,
     redirect: (context, state) {
    //   final isLogged = useBloc.state.isLogged;
    //   if (isLogged) {
    //     if (state.location == '/') {
    //       return '/home';
    //     }
    //   } else {
    //     if (state.location.startsWith('/home')) {
    //       return '/sign-in';
    //     }
    //   }
    //   return null;
    },
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.startApp.name,
        builder: (context, state) =>  const HomeScreen(),
        routes: [
          GoRoute(
            path: 'sign-in',
            name: AppRoutes.signIn.name,
            builder: (context, state) => const SignInPage(),
          ),
  

        ]),
    GoRoute(
      path: '/home',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'profile',
          name: AppRoutes.profile.name,
          builder: (context, state) => Container(),
        ),
      ],
    ),
  ],
);
