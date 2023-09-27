import 'package:cj_flutter_riverpod_tutorial_app/common/utils/image_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/textfields.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/dots_indicator.dart';
import 'package:flutter/material.dart';

class FeaturedBanner extends StatelessWidget {
  FeaturedBanner({super.key});

  final PageController _pageController = PageController();
  final double _totalHeight = 260;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: _totalHeight,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            children: [
              _imageBanner(ImageRes.bannerOne),
              _imageBanner(ImageRes.bannerTwo),
              _imageBanner(ImageRes.bannerThree),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 65,
              width: double.infinity,
              color: Colors.amber.withOpacity(0.8),
              child: _promoDisplay(),
            ),
            SizedBox(height: _totalHeight - 90),
            DotsIndicator(
              controller: _pageController,
              count: 3,
            )
          ],
        ),
      ],
    );
  }

  Widget _promoDisplay() {
    return Stack(
      children: [
        const Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextNormal(text: 'Course on sale from \$649.00'),
                TextNormal(text: '1 day left!', fontWeight: FontWeight.bold),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.all(6),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child:
                    const TextNormal(text: 'X', fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }

  Widget _imageBanner(String image) {
    return ClipRect(
      child: Transform.scale(
        scale: 1.2,
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            width: double.infinity,
            height: _totalHeight - 10,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
