import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class TopSearches extends StatelessWidget {
  const TopSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _displayHeader(),
        const SizedBox(height: 10),
        _categoriesList()
      ],
    );
  }

  Widget _displayHeader() {
    return const TutorialText(
      text: 'Top searches',
      fontWeight: FontWeight.bold,
    );
  }

  Widget _categoriesList() {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 12,
        runSpacing: 3,
        children: List.generate(7, (index) {
          return const TutorialButton(
            buttonType: EButtonType.category,
          );
        }),
      ),
    );
  }
}
