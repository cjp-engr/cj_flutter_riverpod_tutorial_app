// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';

class TutorialButton extends StatelessWidget {
  final EButtonType buttonType;
  final String? text;
  final Widget? content;
  final Color? textColor;
  final IconData? icon;
  final VoidCallback? onPressed;

  const TutorialButton({
    Key? key,
    required this.buttonType,
    this.content,
    this.text = '',
    this.textColor,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case EButtonType.primary:
        return _PrimaryButton(content: content!, onPressed: onPressed);
      case EButtonType.secondary:
        return _SecondaryButton(content: content!, onPressed: onPressed);
      case EButtonType.tertiary:
        return _TertiaryButton(
            text: text!, textColor: textColor, onPressed: onPressed);
      case EButtonType.category:
        return _CategoryButton(text: text, onPressed: onPressed);
      case EButtonType.icon:
        return _IconButton(icon: icon!);

      default:
        return const Placeholder();
    }
  }
}

class _PrimaryButton extends StatelessWidget {
  final Widget content;
  final VoidCallback? onPressed;
  const _PrimaryButton({
    Key? key,
    this.onPressed,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          child: content),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final Widget content;
  final VoidCallback? onPressed;
  const _SecondaryButton({
    Key? key,
    required this.content,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        child: content,
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

class _IconButton extends StatelessWidget {
  final IconData icon;
  const _IconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: KIconSize.s30,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
