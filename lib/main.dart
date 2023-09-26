import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_styles.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/app_bar.dart';
import 'package:cj_flutter_riverpod_tutorial_app/common/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      home: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar(),
          body: Center(
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
