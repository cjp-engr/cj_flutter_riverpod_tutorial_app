import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: const BorderSide(color: AppColors.primaryText),
            ),
          ),
        ),
        onPressed: () {},
        child: null,
      ),
    );
  }
}
