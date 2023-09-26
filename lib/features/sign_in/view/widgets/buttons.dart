import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String icon;
  final String text;
  final Color? btnColor;

  const SignInButton(
      {super.key, required this.icon, required this.text, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ConstBorderRadius.four),
                  side: const BorderSide(color: AppColors.primaryBackground),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Image.asset(icon, color: btnColor),
                ),
                const SizedBox(width: 15),
                TextNormal(
                  text: text,
                  fontWeight: FontWeight.bold,
                  fontSize: KFontSize.s12,
                ),
              ],
            )),
      ),
    );
  }
}
