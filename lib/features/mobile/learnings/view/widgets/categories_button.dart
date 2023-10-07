import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 20,
        children: [
          TutorialButton(buttonType: EButtonType.category, text: 'All'),
          TutorialButton(buttonType: EButtonType.category, text: 'Downloaded'),
          TutorialButton(buttonType: EButtonType.category, text: 'Archived'),
          TutorialButton(buttonType: EButtonType.category, text: 'Favorited'),
        ],
      ),
    );
  }
}
