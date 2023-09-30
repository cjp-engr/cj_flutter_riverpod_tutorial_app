// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cj_flutter_riverpod_tutorial_app/common/enums/icon_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';

class SettingsOption extends StatelessWidget {
  final String text;
  const SettingsOption({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TutorialText(text: text),
            Icon(
              Icons.arrow_forward_ios,
              size: EIconSize.small.value,
            )
          ],
        ),
      ),
    );
  }
}
