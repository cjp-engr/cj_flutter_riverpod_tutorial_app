import 'package:cj_flutter_riverpod_tutorial_app/common/utils/image_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/dots_indicator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/welcome_widgets.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 700.0,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            children: _welcomeImageText(),
          ),
        ),
        DotsIndicator(
          controller: _pageController,
          count: _welcomeImageText().length,
        ),
        const Spacer(),
        const Row(
          children: [
            WelcomeButton(text: 'Browse'),
            WelcomeButton(text: 'Sign in'),
          ],
        ),
      ],
    );
  }

  List<WelcomeWidgets> _welcomeImageText() => [
        const WelcomeWidgets(
          header: 'Lorem Ipsum',
          subHeader:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          image: ImageRes.welcomeImgMan,
        ),
        const WelcomeWidgets(
          header: 'Neque porro quisquam',
          subHeader:
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.',
          image: ImageRes.welcomeImgBoy,
        ),
        const WelcomeWidgets(
          header: 'Where can I get some?',
          subHeader: 'Various versions have evolved over the years.',
          image: ImageRes.welcomeImgReading,
        ),
      ];
}
