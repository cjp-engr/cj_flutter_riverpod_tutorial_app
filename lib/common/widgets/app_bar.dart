// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_checker.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget body;
  final String? leadingPath;
  final List<Widget> actions;
  const CustomAppBar({
    Key? key,
    this.title = const SizedBox(),
    this.leadingPath = '',
    this.actions = const [],
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authCheckerProvider).isAuthenticated;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: leadingPath!.isEmpty ? 0 : KSpacing.s30,
          leading: _onBackDisplay(context),
          titleSpacing: 0,
          title: title,
          actions: isAuthenticated ? _actionsDefault(context) : [],
        ),
        bottomNavigationBar:
            isAuthenticated ? const BottomNavBar() : const SizedBox(),
        body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: body),
      ),
    );
  }

  Widget _onBackDisplay(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        size: KIconSize.s30,
        color: Colors.white,
      ),
      onPressed: () => leadingPath!.isEmpty ? null : context.go(leadingPath!),
    );
  }

  List<Widget> _actionsDefault(BuildContext context) {
    return actions.isEmpty
        ? [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: KSpacing.s8),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  size: KIconSize.s30,
                  color: Colors.white,
                ),
                onPressed: () {
                  context.go(AppRoutesNames.cart);
                },
              ),
            ),
          ]
        : actions;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
