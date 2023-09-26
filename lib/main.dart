import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_styles.dart';
import 'package:cj_flutter_riverpod_tutorial_app/features/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      home: const SignInPage(),
    );
  }
}
