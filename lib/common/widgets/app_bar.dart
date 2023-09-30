// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/bottom_nav_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/provider/welcome_notifier.dart';
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
    final isAuthenticated = ref.watch(welcomeNotifierProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: title,
          actions: isAuthenticated ? _actionsDefault() : actions,
        ),
        body: body,
        bottomNavigationBar:
            isAuthenticated ? const BottomNavBar() : const SizedBox(),
      ),
    );
  }

  List<Widget> _actionsDefault() {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            size: EIconSize.large.value,
            color: Colors.white,
          ),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      ),
    ];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
