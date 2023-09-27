import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
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
        _categoriesList(),
      ],
    );
  }

  Widget _headerDisplay() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextNormal(
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
            child: const TextNormal(
              text: 'See all',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _categoriesList() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 105, crossAxisCount: 2),
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (_, index) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(EBorderRadius.s32.value),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                child: TextNormal(
                  text: 'index $index',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
