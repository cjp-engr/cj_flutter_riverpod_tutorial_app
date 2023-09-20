import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final PageController controller;
  const DotsIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      onDotClicked: (index) {},
      count: 3,
      effect: const ExpandingDotsEffect(dotHeight: 10),
    );
  }
}
