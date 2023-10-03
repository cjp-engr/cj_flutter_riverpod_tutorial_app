import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_checker.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/routes/app_routes_names.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/icon_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/login_register/view/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginRegisterPage extends ConsumerStatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  ConsumerState<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends ConsumerState<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    final bool hasAcc = ref.watch(authCheckerProvider).hasAccount;
    print(hasAcc);
    return CustomAppBar(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(height: 50),
          TutorialText(
            text: hasAcc ? 'Sign In' : 'Sign Up',
            fontWeight: FontWeight.bold,
            fontSize: KFontSize.s24,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: TutorialText(
              text:
                  'By using our services you are agreeing to our Terms and Privacy Statement',
              fontWeight: FontWeight.bold,
              fontSize: KFontSize.s12,
            ),
          ),
          const SizedBox(height: 100),
          ..._buttonList(hasAcc),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TutorialText(
                text: hasAcc ? 'New here?' : 'Already have an account?',
                fontWeight: FontWeight.bold,
                fontSize: KFontSize.s12,
              ),
              const SizedBox(width: 2),
              const TextLoginRegister(),
            ],
          ),
        ]),
      ),
    );
  }

  List<Widget> _buttonList(bool hasAcc) {
    String txt = hasAcc ? 'Sign In' : 'Sign Up';
    return [
      LoginRegister(
        icon: IconRes.emailIcon,
        text: '$txt with email',
        btnColor: Colors.white,
      ),
      LoginRegister(
          icon: IconRes.googleIcon,
          text: '$txt with Google',
          // TODO: To be updated later
          onPressed: () {
            ref.read(authCheckerProvider.notifier).onAuthentication(true);
            context.go(AppRoutesNames.feature);
          }),
      LoginRegister(icon: IconRes.facebookIcon, text: '$txt with Facebook'),
      LoginRegister(icon: IconRes.appleIcon, text: '$txt with Apple'),
    ];
  }
}
