import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/cart/view/widgets/tutorial_details.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _displayAddedItems(),
      ],
    );
  }

  Widget _displayEmptyCart() {
    return Container(
      width: double.infinity,
      height: 180,
      color: Colors.grey.shade700,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TutorialText(
            text: 'Add Courses',
            fontSize: KFontSize.s20,
            fontWeight: FontWeight.bold,
          ),
          TutorialText(text: 'Your cart is empty'),
        ],
      ),
    );
  }

  Widget _displayAddedItems() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KSpacing.s12),
      child: SizedBox(
        width: double.infinity,
        height: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TutorialText(
              text: '1 item',
              fontSize: KFontSize.s20,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: KSpacing.s8),
            CartTutorialDetails(),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                  width: 320,
                  height: 50,
                  child: TutorialButton(
                      text: 'Buyyy', buttonType: EButtonType.primary)),
            )
          ],
        ),
      ),
    );
  }
}
