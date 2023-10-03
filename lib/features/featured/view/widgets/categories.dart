import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class FeaturedCategories extends StatelessWidget {
  const FeaturedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _headerDisplay(),
        const SizedBox(height: 10),
        _categoriesList(context),
      ],
    );
  }

  Widget _headerDisplay() {
    return const Padding(
      padding: EdgeInsets.all(KSpacing.verySmall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TutorialText(
            text: 'Categories',
            fontSize: KFontSize.s24,
            fontWeight: FontWeight.bold,
          ),
          TutorialButton(
            text: 'See All',
            buttonType: EButtonType.tertiary,
          )
        ],
      ),
    );
  }

  Widget _categoriesList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSpacing.verySmall),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
            maxWidth: MediaQuery.of(context).size.height * 1,
          ),
          child: Wrap(
            spacing: KSpacing.small,
            runSpacing: 2,
            children: List.generate(
              12,
              (index) {
                return TutorialButton(
                    buttonType: EButtonType.category,
                    text: generateRandomString());
              },
            ),
          ),
        ),
      ),
    );
  }
}
