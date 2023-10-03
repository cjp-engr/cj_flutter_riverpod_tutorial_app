import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/learnings/view/widgets/categories_button.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/learnings/view/widgets/tutorial_details.dart';
import 'package:flutter/material.dart';

class LearningsPage extends StatelessWidget {
  const LearningsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: _displayTitle(),
      actions: _actionsList(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KSpacing.verySmall),
        child: Column(
          children: [
            const Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CategoriesButton(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      20,
                      (index) {
                        return const LearningsTutorialDetails();
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
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
          text: 'My Courses',
          fontWeight: FontWeight.bold,
          fontSize: KFontSize.s16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  List<Widget> _actionsList() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: KSpacing.verySmall),
        child: IconButton(
          icon: const Icon(
            Icons.search,
            size: KIconSize.s30,
            color: Colors.white,
          ),
          onPressed: () {
            // handle the press
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: KSpacing.verySmall),
        child: IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            size: KIconSize.s30,
            color: Colors.white,
          ),
          onPressed: () {
            // handle the press
          },
        ),
      ),
    ];
  }
}
