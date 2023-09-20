import 'package:cj_flutter_riverpod_tutorial_app/common/utils/image_res.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/welcome_widgets.dart';

List<WelcomeWidgets> welcomeImage() {
  return [
    const WelcomeWidgets(
      image: ImageRes.welcomeImgMan,
    ),
    const WelcomeWidgets(
      image: ImageRes.welcomeImgBoy,
    ),
    const WelcomeWidgets(
      image: ImageRes.welcomeImgReading,
    ),
  ];
}
