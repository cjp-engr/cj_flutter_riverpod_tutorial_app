import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class TutorialButton extends StatelessWidget {
  final EButtonType buttonType;
  const TutorialButton({super.key, this.buttonType = EButtonType.primary});

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case EButtonType.primary:
        return const Placeholder();
      case EButtonType.secondary:
        return const Placeholder();
      case EButtonType.tertiary:
        return const Placeholder();
      case EButtonType.category:
        return const CategoryButton();
      default:
        return const Placeholder();
    }
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(EBorderRadius.s32.value),
            side: const BorderSide(color: Colors.white),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
      onPressed: () {},
      child: TutorialText(
        text: generateRandomString(),
      ),
    );
  }
}
