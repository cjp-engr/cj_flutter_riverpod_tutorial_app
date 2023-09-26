// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/features/authentication/provider/authentication_notifier.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthButton extends StatelessWidget {
  final String icon;
  final String text;
  final Color? btnColor;

  const AuthButton(
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
                borderRadius: BorderRadius.circular(EBorderRadius.s4.value),
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
                fontSize: EFontSize.s12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextAuthButton extends ConsumerStatefulWidget {
  const TextAuthButton({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<TextAuthButton> createState() => _TextAuthButtonState();
}

class _TextAuthButtonState extends ConsumerState<TextAuthButton> {
  @override
  Widget build(BuildContext context) {
    final bool hasAcc = ref.watch(authNotifierProvider);
    return TextButton(
        onPressed: () =>
            ref.read(authNotifierProvider.notifier).hasAccount(!hasAcc),
        child: Text(hasAcc ? 'Log in' : 'Create an account'));
  }
}
