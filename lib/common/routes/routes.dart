import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/authentication/authentication.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutesNames.welcome,
      builder: (BuildContext context, GoRouterState state) {
        return WelcomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutesNames.auth,
          builder: (BuildContext context, GoRouterState state) {
            return const AuthPage();
          },
        ),
      ],
    ),
  ],
);
