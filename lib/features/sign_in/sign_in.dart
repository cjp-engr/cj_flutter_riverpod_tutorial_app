import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/icon_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/sign_in/view/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(height: 50),
            const TextNormal(
              text: 'Sign In',
              fontWeight: FontWeight.bold,
              fontSize: KFontSize.s24,
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextNormal(
                text:
                    'By using our services you are agreeing to our Terms and Privacy Statement',
                fontWeight: FontWeight.bold,
                fontSize: KFontSize.s12,
              ),
            ),
            const SizedBox(height: 100),
            ..._buttonList(),
          ]),
        ),
      ),
    );
  }

  List<Widget> _buttonList() {
    return [
      const SignInButton(
        icon: IconRes.emailIcon,
        text: 'Sign in with email',
        btnColor: AppColors.primaryBackground,
      ),
      const SignInButton(icon: IconRes.googleIcon, text: 'Sign in with Google'),
      const SignInButton(
          icon: IconRes.facebookIcon, text: 'Sign in with Facebook'),
      const SignInButton(icon: IconRes.appleIcon, text: 'Sign in with Apple'),
    ];
  }
}
