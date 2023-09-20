import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:flutter/material.dart';

class WelcomeWidgets extends StatelessWidget {
  final String? header;
  final String? subHeader;
  final String? image;
  const WelcomeWidgets({super.key, this.header, this.subHeader, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        image != null
            ? Image.asset(image!)
            : Column(
                children: [
                  Text20Normal(text: header!),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: Text12Normal(text: subHeader!),
                  ),
                ],
              )
      ],
    );
  }
}
