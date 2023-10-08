import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/account/account_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/cart_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/login_register/login_register_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/featured/featured_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/learnings/learnings_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/preview_tutorial/preview_course_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/search/search_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/welcome/welcome_mobile.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/wishlist/wishlist_mobile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter tutorialRoute = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutesNames.base,
      builder: (BuildContext context, GoRouterState state) {
        return WelcomeMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginRegisterMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.feature,
      builder: (BuildContext context, GoRouterState state) {
        return const FeaturedMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.search,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.learnings,
      builder: (BuildContext context, GoRouterState state) {
        return const LearningsMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.wishlist,
      builder: (BuildContext context, GoRouterState state) {
        return const WishListMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.account,
      builder: (BuildContext context, GoRouterState state) {
        return const AccountMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.cart,
      builder: (BuildContext context, GoRouterState state) {
        return const CartMobilePage();
      },
    ),
    GoRoute(
      path: AppRoutesNames.previewCourse,
      builder: (BuildContext context, GoRouterState state) {
        return const PreviewCourseMobilePage();
      },
    ),
  ],
);
