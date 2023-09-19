import 'package:cj_flutter_riverpod_tutorial_app/common/utils/image_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class WelcomeWidgets extends StatelessWidget {
  final String header;
  final String subHeader;
  final String image;
  const WelcomeWidgets(
      {super.key,
      this.header = 'Lorem Ipsum',
      this.subHeader =
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      this.image = ImageRes.welcomeImgBoy});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        Image.asset(image),
        const SizedBox(height: 70),
        Text32Normal(text: header),
        const SizedBox(height: 10),
        SizedBox(
          width: 300,
          child: Text14Normal(text: subHeader),
        ),
      ],
    );
  }
}
