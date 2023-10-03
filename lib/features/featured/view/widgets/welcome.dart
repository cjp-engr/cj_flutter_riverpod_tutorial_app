import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class FeaturedWelcome extends StatelessWidget {
  const FeaturedWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(KSpacing.small),
              side: const BorderSide(color: Colors.white),
            ),
            child: const Icon(Icons.person_outline, color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TutorialText(text: 'Welcome, Carmen Carmen'),
              TutorialText(text: 'Aspiring Web Developer'),
              TutorialButton(
                  buttonType: EButtonType.tertiary, text: 'Edit Goal')
            ],
          )
        ],
      ),
    );
  }
}
