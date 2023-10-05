// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final String activePage =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavButton(
            icon: Icons.star,
            text: 'Featured',
            isActive: activePage == AppRoutesNames.feature,
            onPressed: () => context.go(AppRoutesNames.feature),
          ),
          BottomNavButton(
            icon: Icons.search,
            text: 'Search',
            isActive: activePage == AppRoutesNames.search,
            onPressed: () => context.go(AppRoutesNames.search),
          ),
          BottomNavButton(
            icon: Icons.play_circle_filled_outlined,
            text: 'Learnings',
            isActive: activePage == AppRoutesNames.learnings,
            onPressed: () => context.go(AppRoutesNames.learnings),
          ),
          BottomNavButton(
            icon: Icons.favorite,
            text: 'Wishlist',
            isActive: activePage == AppRoutesNames.wishlist,
            onPressed: () => context.go(AppRoutesNames.wishlist),
          ),
          BottomNavButton(
            icon: Icons.person_outline,
            text: 'Account',
            isActive: activePage == AppRoutesNames.account,
            onPressed: () => context.go(AppRoutesNames.account),
          ),
        ],
      ),
    );
  }
}

class BottomNavButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool? isActive;
  final VoidCallback? onPressed;
  const BottomNavButton({
    Key? key,
    required this.icon,
    required this.text,
    this.isActive = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = isActive! ? Colors.white : Colors.grey;
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KBorderRadius.s4),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: KIconSize.s30,
          ),
          TutorialText(
            text: text,
            color: color,
            fontSize: KFontSize.s10,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
