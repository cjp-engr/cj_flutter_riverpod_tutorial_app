import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    useMaterial3: true,
    fontFamily: 'Montserrat',
  );
}
