import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:flutter/material.dart';

class TutorialText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final double fontSize;
  final Color color;
  final TextStyle? style;

  const TutorialText({
    Key? key,
    this.text = "",
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.fontSize = KFontSize.s12,
    this.color = Colors.white,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
