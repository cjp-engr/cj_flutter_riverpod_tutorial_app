import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/view/widgets/tutorial_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartWishlist extends StatelessWidget {
  const CartWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSpacing.s8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TutorialText(
            text: 'Wishlist',
            fontSize: KFontSize.s20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: KSpacing.s8),
          const CartTutorialDetails(),
          Align(
            child: TutorialButton(
              text: 'See All',
              buttonType: EButtonType.tertiary,
              onPressed: () => context.go(AppRoutesNames.wishlist),
            ),
          )
        ],
      ),
    );
  }
}
