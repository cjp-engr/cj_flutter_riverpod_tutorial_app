import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/wishlist/view/widgets/tutorial_details.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: _displayTitle(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KSpacing.verySmall),
          child: Column(
            children: [
              ...List.generate(
                20,
                (index) {
                  return const WishListTutorialDetails();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KSpacing.verySmall),
      child: SizedBox(
        width: double.infinity,
        child: TutorialText(
          text: 'Wishlist',
          fontWeight: FontWeight.bold,
          fontSize: KFontSize.s16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
