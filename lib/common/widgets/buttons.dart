// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';

class TutorialButton extends StatelessWidget {
  final EButtonType buttonType;
  final String? text;
  final Color? textColor;
  final VoidCallback? onPressed;

  const TutorialButton({
    Key? key,
    required this.buttonType,
    this.text,
    this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case EButtonType.primary:
        return _PrimaryButton(text: text, onPressed: onPressed);
      case EButtonType.secondary:
        return _SecondaryButton(text: text, onPressed: onPressed);
      case EButtonType.tertiary:
        return _TertiaryButton(
            text: text!, textColor: textColor, onPressed: onPressed);
      case EButtonType.category:
        return _CategoryButton(text: text, onPressed: onPressed);
      default:
        return const Placeholder();
    }
  }
}

class _PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const _PrimaryButton({
    Key? key,
    this.text = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(KBorderRadius.s4),
                side: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          onPressed: onPressed,
          child: TutorialText(
            text: text!,
          ),
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const _SecondaryButton({
    Key? key,
    this.text = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(KBorderRadius.s4),
                side: const BorderSide(color: Colors.amber),
              ),
            ),
          ),
          onPressed: onPressed,
          child: TutorialText(
            text: text!,
          ),
        ),
      ),
    );
  }
}

class _TertiaryButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final VoidCallback? onPressed;
  const _TertiaryButton({
    Key? key,
    required this.text,
    this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: TutorialText(
        text: text,
        color: textColor ?? Colors.amber,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const _CategoryButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: KSpacing.s8),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KBorderRadius.s32),
            side: const BorderSide(color: Colors.white),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
      onPressed: () {},
      child: TutorialText(text: text!, fontWeight: FontWeight.bold),
    );
  }
}
