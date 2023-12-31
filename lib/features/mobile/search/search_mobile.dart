import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/search/view/widgets/browse_categories.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/search/view/widgets/search_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/search/view/widgets/top_searches.dart';
import 'package:flutter/material.dart';

class SearchMobilePage extends StatelessWidget {
  const SearchMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: CustomSearchBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TopSearches(),
              SizedBox(height: 20),
              BrowseCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
