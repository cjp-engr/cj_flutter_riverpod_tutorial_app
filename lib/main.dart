import 'package:cj_flutter_riverpod_tutorial_app/common/routes/routes.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: TutorialApp()));
}

class TutorialApp extends StatelessWidget {
  const TutorialApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppTheme.appThemeData,
        routerConfig: tutorialRoute);
  }
}
