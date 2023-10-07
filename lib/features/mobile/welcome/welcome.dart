import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/image_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/dots_indicator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/mobile/welcome/view/widgets/welcome_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 600.0,
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
          Row(
            children: [
              const SizedBox(width: 10),
              const Expanded(
                child: TutorialButton(
                  content: TutorialText(text: 'Browse'),
                  buttonType: EButtonType.secondary,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TutorialButton(
                  content: const TutorialText(text: 'Sign in'),
                  onPressed: () {
                    context.go(AppRoutesNames.login);
                  },
                  buttonType: EButtonType.primary,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
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
