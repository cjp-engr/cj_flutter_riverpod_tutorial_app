// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_checker.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget body;
  final List<Widget> actions;
  const CustomAppBar({
    Key? key,
    this.title = const SizedBox(),
    this.actions = const [],
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAuthenticated = ref.watch(authCheckerProvider).isAuthenticated;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: title,
          actions: isAuthenticated ? _actionsDefault() : [],
        ),
        bottomNavigationBar:
            isAuthenticated ? const BottomNavBar() : const SizedBox(),
        body: body,
      ),
    );
  }

  List<Widget> _actionsDefault() {
    return actions.isEmpty
        ? [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: EIconSize.large.value,
                  color: Colors.white,
                ),
                onPressed: () {
                  // handle the press
                },
              ),
            ),
          ]
        : actions;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
