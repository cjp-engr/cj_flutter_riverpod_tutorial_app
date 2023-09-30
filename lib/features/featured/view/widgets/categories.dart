import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TutorialText(
            text: 'Categories',
            fontSize: EFontSize.s24,
            fontWeight: FontWeight.bold,
          ),
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const TutorialText(
              text: 'See all',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _categoriesList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
            maxWidth: MediaQuery.of(context).size.height * 1,
          ),
          child: Wrap(
            spacing: 12,
            runSpacing: 2,
            children: List.generate(
              12,
              (index) {
                return const TutorialButton(
                  buttonType: EButtonType.category,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
