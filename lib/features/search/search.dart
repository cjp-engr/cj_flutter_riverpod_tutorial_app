import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/view/widgets/browse_categories.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/search/view/widgets/top_searches.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: _searchBar(),
      body: const SingleChildScrollView(
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

  Widget _searchBar() {
    return const Padding(
      padding: EdgeInsets.only(left: 8, top: 8),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextField(
          autocorrect: false,
          style: TextStyle(
            decoration: TextDecoration.none,
            decorationThickness: 0,
          ),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
