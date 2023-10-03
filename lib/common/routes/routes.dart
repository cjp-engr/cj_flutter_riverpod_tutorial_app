import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/account/account.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/cart/cart.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/login_register/login_register.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/featured/featured.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/learnings/learnings.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/search.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/welcome.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter tutorialRoute = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutesNames.base,
      builder: (BuildContext context, GoRouterState state) {
        return WelcomePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginRegisterPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.feature,
      builder: (BuildContext context, GoRouterState state) {
        return const FeaturedPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.search,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.learnings,
      builder: (BuildContext context, GoRouterState state) {
        return const LearningsPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.wishlist,
      builder: (BuildContext context, GoRouterState state) {
        return const WishListPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.account,
      builder: (BuildContext context, GoRouterState state) {
        return const AccountPage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.cart,
      builder: (BuildContext context, GoRouterState state) {
        return const CartPage();
      },
    ),
  ],
);
