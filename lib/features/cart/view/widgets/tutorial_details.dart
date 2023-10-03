import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class CartTutorialDetails extends StatelessWidget {
  const CartTutorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                _displayImage(),
                const SizedBox(height: KSpacing.s12),
              ],
            ),
            const SizedBox(width: KSpacing.s8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _displayTitle(),
                _displayAuthor(),
                _displayPrice(),
                const SizedBox(height: KSpacing.s12),
                Row(
                  children: [
                    _addToCartButton(),
                    const SizedBox(width: KSpacing.s12),
                    _removeButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: KSpacing.s18)
      ],
    );
  }

  Widget _displayImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(KBorderRadius.s4),
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

  Widget _addToCartButton() {
    return const TutorialButton(
      text: 'Add to Cart',
      buttonType: EButtonType.tertiary,
    );
  }

  Widget _removeButton() {
    return const TutorialButton(
      text: 'Remove',
      buttonType: EButtonType.tertiary,
    );
  }
}
