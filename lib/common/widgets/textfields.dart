import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Text12Normal extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final TextAlign textAlign;

  const Text12Normal(
      {Key? key,
      this.text = "",
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 12,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text20Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign textAlign;

  const Text20Normal(
      {Key? key,
      this.text = "",
      this.color = AppColors.primaryText,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 20,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Text32Normal extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign textAlign;

  const Text32Normal(
      {Key? key,
      this.text = "",
      this.color = AppColors.primaryText,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 32,
        fontWeight: fontWeight,
      ),
    );
  }
}
