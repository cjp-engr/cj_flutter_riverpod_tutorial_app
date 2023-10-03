import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class WishListTutorialDetails extends StatelessWidget {
  const WishListTutorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 3),
                _displayRating(),
                const SizedBox(height: 3),
                _displayPrice(),
                generateRandomBool() ? _displayTag() : const SizedBox()
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

  Widget _displayRating() {
    return const Row(
      children: [
        TutorialText(text: '4.7'),
        SizedBox(width: 2),
        Row(
          children: [
            Icon(Icons.star, size: KIconSize.s14),
            Icon(Icons.star, size: KIconSize.s14),
            Icon(Icons.star, size: KIconSize.s14),
            Icon(Icons.star, size: KIconSize.s14),
            Icon(Icons.star_border_outlined, size: KIconSize.s14)
          ],
        ),
        SizedBox(width: 2),
        TutorialText(text: '(188,327)'),
      ],
    );
  }

  Widget _displayPrice() {
    return const Row(
      children: [
        TutorialText(
          text: '\$3,790.50',
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w900,
        ),
        SizedBox(width: 5),
        TutorialText(
          text: '\$5,790.50',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: KFontSize.s10,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Widget _displayTag() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(KBorderRadius.s4),
            ),
          ),
          child: const TutorialText(
              text: 'Bestseller', fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
