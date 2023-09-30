import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        return const TutorialDetails();
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
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: double.infinity,
        child: TutorialText(
          text: 'My Courses',
          fontWeight: FontWeight.bold,
          fontSize: EFontSize.s16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  List<Widget> _actionsList() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: IconButton(
          icon: Icon(
            Icons.search,
            size: EIconSize.large.value,
            color: Colors.white,
          ),
          onPressed: () {
            // handle the press
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            size: EIconSize.large.value,
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
