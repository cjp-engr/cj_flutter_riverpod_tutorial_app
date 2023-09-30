// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () => context.go(AppRoutesNames.feature),
          ),
          BottomNavButton(
            icon: Icons.search,
            text: 'Search',
            onPressed: () => context.go(AppRoutesNames.search),
          ),
          BottomNavButton(
            icon: Icons.play_circle_filled_outlined,
            text: 'Learnings',
            onPressed: () => context.go(AppRoutesNames.learnings),
          ),
          BottomNavButton(
            icon: Icons.favorite,
            text: 'Wishlist',
            onPressed: () => context.go(AppRoutesNames.wishlist),
          ),
          BottomNavButton(
            icon: Icons.person_outline,
            text: 'Account',
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
  final VoidCallback? onPressed;
  const BottomNavButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(EBorderRadius.s4.value),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: EIconSize.large.value,
          ),
          TutorialText(
            text: text,
            fontSize: EFontSize.s10,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
