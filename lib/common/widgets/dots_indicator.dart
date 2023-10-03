// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final PageController controller;
  final int count;
  final double dotHeight;
  const DotsIndicator({
    Key? key,
    required this.controller,
    required this.count,
    this.dotHeight = KSpacing.verySmall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      onDotClicked: (index) {},
      count: count,
      effect: ExpandingDotsEffect(dotHeight: dotHeight),
    );
  }
}
