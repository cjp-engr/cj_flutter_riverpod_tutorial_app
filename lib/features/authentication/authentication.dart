import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/icon_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/authentication/provider/authentication_notifier.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/authentication/view/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool hasAcc = ref.watch(authNotifierProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [
        const SizedBox(height: 50),
        TextNormal(
          text: hasAcc ? 'Sign In' : 'Sign Up',
          fontWeight: FontWeight.bold,
          fontSize: EFontSize.s24,
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: TextNormal(
            text:
                'By using our services you are agreeing to our Terms and Privacy Statement',
            fontWeight: FontWeight.bold,
            fontSize: EFontSize.s12,
          ),
        ),
        const SizedBox(height: 100),
        ..._buttonList(hasAcc),
        const SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextNormal(
              text: hasAcc ? 'New here?' : 'Already have an account?',
              fontWeight: FontWeight.bold,
              fontSize: EFontSize.s12,
            ),
            const SizedBox(width: 2),
            const TextAuthButton(),
          ],
        ),
      ]),
    );
  }

  List<Widget> _buttonList(bool hasAcc) {
    String txt = hasAcc ? 'Sign In' : 'Sign Up';
    return [
      AuthButton(
        icon: IconRes.emailIcon,
        text: '$txt with email',
        btnColor: Colors.white,
      ),
      AuthButton(icon: IconRes.googleIcon, text: '$txt with Google'),
      AuthButton(icon: IconRes.facebookIcon, text: '$txt with Facebook'),
      AuthButton(icon: IconRes.appleIcon, text: '$txt with Apple'),
    ];
  }
}
