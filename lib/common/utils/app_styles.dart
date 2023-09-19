import 'package:cj_flutter_riverpod_tutorial_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColors.primaryText),
      ),
      useMaterial3: true,
      fontFamily: 'Montserrat');
}
