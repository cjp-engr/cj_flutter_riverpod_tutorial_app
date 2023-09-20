import 'package:cj_flutter_riverpod_tutorial_app/features/welcome/view/widgets/welcome_widgets.dart';

List<WelcomeWidgets> welcomeText() {
  return [
    const WelcomeWidgets(
      header: 'Lorem Ipsum',
      subHeader:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    ),
    const WelcomeWidgets(
      header: 'Neque porro quisquam',
      subHeader:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.',
    ),
    const WelcomeWidgets(
      header: 'Where can I get some?',
      subHeader: 'Various versions have evolved over the years.',
    ),
  ];
}
