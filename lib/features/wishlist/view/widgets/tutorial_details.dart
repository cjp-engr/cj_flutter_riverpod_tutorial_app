import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class WishListTutorialDetails extends StatelessWidget {
  const WishListTutorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _displayImage(),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _displayTitle(),
                const SizedBox(height: 2),
                _displayAuthor(),
                const SizedBox(height: 3),
                _ratingDetails(),
                const SizedBox(height: 3),
                _price(),
                generateRandomBool() ? _tag() : const SizedBox()
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

  Widget _ratingDetails() {
    return const Row(
      children: [
        TutorialText(text: '4.7'),
        SizedBox(width: 2),
        Row(
          children: [
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star_border_outlined, size: 14)
          ],
        ),
        SizedBox(width: 2),
        TutorialText(text: '(188,327)'),
      ],
    );
  }

  Widget _price() {
    return Row(
      children: [
        const TutorialText(
          text: '\$3,790.50',
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w900,
        ),
        const SizedBox(width: 5),
        Text('\$3,790.50',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: EFontSize.s10.value,
              color: Colors.grey,
            ))
      ],
    );
  }

  Widget _tag() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(EBorderRadius.s4.value),
              ),
            ),
            child: const TutorialText(
                text: 'Bestseller', fontWeight: FontWeight.w900)),
      ],
    );
  }
}
