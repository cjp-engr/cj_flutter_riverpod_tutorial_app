import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/icon_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/view/widgets/tutorial_details.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSpacing.s12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TutorialText(
            text: '1 item',
            fontSize: KFontSize.s20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: KSpacing.s8),
          const CartTutorialDetails(),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 320,
              height: 50,
              child: TutorialButton(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TutorialText(
                        text: 'Buy with',
                        fontSize: KFontSize.s16,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(width: KSpacing.s8),
                      Image.asset(IconRes.googlePay)
                    ],
                  ),
                  buttonType: EButtonType.primary),
            ),
          )
        ],
      ),
    );
  }
}
