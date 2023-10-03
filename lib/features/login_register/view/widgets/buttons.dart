// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/auth_checker/auth_checker.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginRegister extends StatelessWidget {
  final String icon;
  final String text;
  final Color? btnColor;
  final VoidCallback? onPressed;

  const LoginRegister(
      {super.key,
      required this.icon,
      required this.text,
      this.btnColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(KBorderRadius.s4),
                side: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: KSpacing.small),
                child: Image.asset(icon, color: btnColor),
              ),
              const SizedBox(width: 15),
              TutorialText(
                text: text,
                fontWeight: FontWeight.bold,
                fontSize: KFontSize.s12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextLoginRegister extends ConsumerStatefulWidget {
  const TextLoginRegister({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<TextLoginRegister> createState() => _TextLoginRegisterState();
}

class _TextLoginRegisterState extends ConsumerState<TextLoginRegister> {
  @override
  Widget build(BuildContext context) {
    final bool hasAcc = ref.watch(authCheckerProvider).hasAccount;
    return TutorialButton(
        text: hasAcc ? 'Log in' : 'Create an account',
        buttonType: EButtonType.tertiary,
        onPressed: () =>
            ref.read(authCheckerProvider.notifier).onHasAccountCheck(!hasAcc));
  }
}
