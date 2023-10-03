import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(left: KSpacing.verySmall, top: KSpacing.verySmall),
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
