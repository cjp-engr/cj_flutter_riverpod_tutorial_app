import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class LearningsTutorialDetails extends StatelessWidget {
  const LearningsTutorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final progressInd = generateRandomInt();
    return Padding(
      padding: const EdgeInsets.only(top: KSpacing.verySmall),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _displayImage(),
          Padding(
            padding: const EdgeInsets.only(left: KSpacing.verySmall, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _displayTitle(),
                const SizedBox(height: 2),
                _displayAuthor(),
                const SizedBox(height: 5),
                _displayProgress(progressInd),
                const SizedBox(height: KSpacing.small),
                _displayPercentComplete(progressInd),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _displayImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network('https://picsum.photos/60/60'),
    );
  }

  Widget _displayTitle() {
    return const TutorialText(
        text: 'Python Django - The Practical Guide',
        fontWeight: FontWeight.w900);
  }

  Widget _displayAuthor() {
    return const TutorialText(text: 'Carmen Joy Palsario', color: Colors.grey);
  }

  Widget _displayProgress(final progressInd) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              KBorderRadius.s2,
            ),
            color: Colors.white,
          ),
        ),
        Container(
          height: 5,
          width: 300 * progressInd.toDouble() / 100.00,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              KBorderRadius.s2,
            ),
            color: Colors.amber,
          ),
        ),
      ],
    );
  }

  Widget _displayPercentComplete(final progressInd) {
    return TutorialText(text: '$progressInd% complete', color: Colors.grey);
  }
}
