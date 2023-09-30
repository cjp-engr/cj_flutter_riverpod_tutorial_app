import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/icon_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _displayImage(),
        const SizedBox(height: 20),
        _displayName(),
        const SizedBox(height: 10),
        _displayLoginEmail(),
      ],
    );
  }

  Widget _displayImage() {
    return const CircleAvatar(
      backgroundImage: NetworkImage('https://picsum.photos/300'),
      radius: 55,
    );
  }

  Widget _displayName() {
    return const TutorialText(
      text: 'Carmen Joy Palsario',
      fontSize: EFontSize.s16,
      fontWeight: FontWeight.w900,
    );
  }

  Widget _displayLoginEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          IconRes.googleIcon,
          width: EIconSize.large.value,
        ),
        const SizedBox(width: 10),
        const TutorialText(
          text: 'ceejee121@gmail.com',
          fontSize: EFontSize.s12,
          fontWeight: FontWeight.normal,
        )
      ],
    );
  }
}
