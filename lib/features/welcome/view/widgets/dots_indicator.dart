import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final PageController controller;
  final int count;
  const DotsIndicator({
    Key? key,
    required this.controller,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      onDotClicked: (index) {},
      count: count,
      effect: const ExpandingDotsEffect(dotHeight: 10),
    );
  }
}
