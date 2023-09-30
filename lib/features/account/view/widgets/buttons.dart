// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/button_type.dart';

class AccountButton extends StatelessWidget {
  final String text;
  const AccountButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TutorialButton(
      text: text,
      buttonType: EButtonType.tertiary,
      onPressed: () {},
    );
  }
}
