import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class BrowseCategories extends StatelessWidget {
  const BrowseCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _displayHeader(),
        _displayCategories(),
      ],
    );
  }

  Widget _displayHeader() {
    return const TutorialText(
      text: 'Browse Categories',
      fontWeight: FontWeight.bold,
    );
  }

  Widget _displayCategories() {
    return Column(
      children: List.generate(
        20,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TutorialText(text: generateRandomString()),
                Icon(
                  Icons.arrow_forward_ios,
                  size: EIconSize.small.value,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
