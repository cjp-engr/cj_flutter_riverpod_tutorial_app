import 'package:cj_flutter_riverpod_tutorial_app/features/featured/view/widgets/banner.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/featured/view/widgets/categories.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/featured/view/widgets/tutorials_list_details.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/featured/view/widgets/welcome.dart';
import 'package:flutter/material.dart';

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const FeaturedWelcome(),
          const SizedBox(height: 10),
          FeaturedBanner(),
          const SizedBox(height: 10),
          const FeaturedCategories(),
          const SizedBox(height: 10),
          const TutorialsListDetails(),
          const SizedBox(height: 10),
          const TutorialsListDetails(),
          const SizedBox(height: 10),
          const TutorialsListDetails(),
          const SizedBox(height: 10),
          const TutorialsListDetails(),
        ],
      ),
    );
  }
}
