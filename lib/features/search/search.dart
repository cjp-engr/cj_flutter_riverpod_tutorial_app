import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/view/widgets/browse_categories.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/view/widgets/search_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/view/widgets/top_searches.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: const CustomSearchBar(),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: const SingleChildScrollView(
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
      ),
    );
  }
}
