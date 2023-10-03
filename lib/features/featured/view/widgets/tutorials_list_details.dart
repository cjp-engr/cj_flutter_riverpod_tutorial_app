import 'package:cj_flutter_riverpod_tutorial_app/common/constants/border_radius.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/font_size.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/constants/spacing.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/random_generator.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/text.dart';
import 'package:flutter/material.dart';

class TutorialsListDetails extends StatelessWidget {
  const TutorialsListDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _headerDisplay(),
        _tutorialDetails(),
      ],
    );
  }

  Widget _headerDisplay() {
    return const Padding(
      padding: EdgeInsets.all(KSpacing.s8),
      child: TutorialText(
        text: 'Popular for Web Developer',
        fontSize: KFontSize.s24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _tutorialDetails() {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(KSpacing.s8),
          child: SizedBox(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _image(),
                _title(),
                _instructorName(),
                _ratingDetails(),
                _price(),
                generateRandomBool() ? _tag() : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Image.network('https://picsum.photos/180/120',
        width: 180, height: 120);
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(right: KSpacing.s8),
      child: TutorialText(
        text: 'Lorem Ipsum has been the industry\'s standard',
        textAlign: TextAlign.start,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget _instructorName() {
    return const Padding(
      padding: EdgeInsets.only(right: KSpacing.s8),
      child: TutorialText(
        text: 'Hello Worlddd',
        textAlign: TextAlign.start,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }

  Widget _ratingDetails() {
    return const Row(
      children: [
        TutorialText(text: '4.7'),
        SizedBox(width: 2),
        Row(
          children: [
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star, size: 14),
            Icon(Icons.star_border_outlined, size: 14)
          ],
        ),
        SizedBox(width: 2),
        TutorialText(text: '(188,327)'),
      ],
    );
  }

  Widget _price() {
    return const Row(
      children: [
        TutorialText(
          text: '\$3,790.50',
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(width: 5),
        Text('\$3,790.50',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: KFontSize.s10,
              color: Colors.grey,
              fontWeight: FontWeight.w900,
            ))
      ],
    );
  }

  Widget _tag() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Container(
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(KBorderRadius.s4),
              ),
            ),
            child: const TutorialText(
              text: 'Bestseller',
              fontWeight: FontWeight.w900,
            )),
      ],
    );
  }
}
