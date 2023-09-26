import 'package:cj_flutter_riverpod_tutorial_app/common/enums/font_size.dart';
import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final KFontSize fontSize;

  const TextNormal({
    Key? key,
    this.text = "",
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize.value,
        fontWeight: fontWeight,
      ),
    );
  }
}
