// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cj_flutter_riverpod_tutorial_app/common/enums/border_radius.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  const WelcomeButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(EBorderRadius.s4.value),
                side: const BorderSide(color: Colors.white),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
