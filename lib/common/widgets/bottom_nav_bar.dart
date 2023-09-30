// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavButton(
            icon: Icons.star,
            text: 'Featured',
          ),
          BottomNavButton(
            icon: Icons.search,
            text: 'Search',
          ),
          BottomNavButton(
            icon: Icons.play_circle_filled_outlined,
            text: 'Learnings',
          ),
          BottomNavButton(
            icon: Icons.favorite,
            text: 'Wishlist',
          ),
          BottomNavButton(
            icon: Icons.person_outline,
            text: 'Account',
          ),
        ],
      ),
    );
  }
}

class BottomNavButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const BottomNavButton({
    Key? key,
    required this.icon,
    required this.text,
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
      onPressed: () {},
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
