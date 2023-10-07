// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';

class SettingsTitle extends StatelessWidget {
  final String text;
  const SettingsTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TutorialText(
      text: text,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
  }
}
