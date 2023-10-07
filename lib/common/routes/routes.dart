import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/account/account.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/cart.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/login_register/login_register.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/featured/featured.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/learnings/learnings.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/preview_tutorial/preview_course.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/search/search.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/welcome/welcome.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/wishlist/wishlist.dart';
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
    GoRoute(
      path: AppRoutesNames.previewCourse,
      builder: (BuildContext context, GoRouterState state) {
        return const PreviewCoursePage();
      },
    ),
  ],
);
