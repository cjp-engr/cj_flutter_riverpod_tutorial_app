import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class WelcomeWidgets extends StatelessWidget {
  final String header;
  final String subHeader;
  final String image;
  const WelcomeWidgets(
      {super.key,
      required this.header,
      required this.subHeader,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        Image.asset(image),
        Column(
          children: [
            TextNormal(
              text: header,
              fontSize: EFontSize.s20,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextNormal(
                text: subHeader,
                fontSize: EFontSize.s12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
