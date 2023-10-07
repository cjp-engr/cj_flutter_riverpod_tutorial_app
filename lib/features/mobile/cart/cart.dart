import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/view/widgets/cart_item.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/cart/view/widgets/cart_wishlist.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingPath: AppRoutesNames.feature,
      title: _displayTitle(),
      actions: const [
        SizedBox(),
      ],
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartItem(),
            SizedBox(height: KSpacing.s8),
            CartWishlist(),
          ],
        ),
      ),
    );
  }

  Widget _displayTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KSpacing.s8),
      child: SizedBox(
        width: double.infinity,
        child: TutorialText(
          text: 'Cart',
          fontWeight: FontWeight.bold,
          fontSize: KFontSize.s16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
