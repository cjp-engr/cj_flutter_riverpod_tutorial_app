import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/dots_indicator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/widget_image.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _controller1 = PageController();
  final PageController _controller2 = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 560.0,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                onPageChanged: (value) {
                  _controller2.animateToPage(value,
                      duration: const Duration(milliseconds: 50),
                      curve: Curves.bounceInOut);
                },
                controller: _controller1,
                children: welcomeImage(),
              ),
            ),
            DotsIndicator(controller: _controller1),
            SizedBox(
              width: double.infinity,
              height: 190.0,
              child: PageView(
                onPageChanged: (value) {
                  _controller1.animateToPage(value,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceInOut);
                },
                controller: _controller2,
                children: welcomeText(),
              ),
            ),
            const Spacer(),
            const Row(
              children: [
                WelcomeButton(text: 'Browse'),
                WelcomeButton(text: 'Sign in'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
