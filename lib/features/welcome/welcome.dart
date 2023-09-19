import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: const SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Text('test'),
              Row(
                children: [
                  WelcomeButton(),
                  WelcomeButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
