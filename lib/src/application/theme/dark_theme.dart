import 'package:crafty_bay/src/application/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.darkBackground,
        colorSchemeSeed: AppColors.themeColor);
  }
}
