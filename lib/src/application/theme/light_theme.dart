import 'package:crafty_bay/src/application/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.lightBackground,
        colorSchemeSeed: AppColors.themeColor,
        textTheme: _buildTextTitleSmallStyle());
  }

  static TextTheme _buildTextTitleSmallStyle() {
    return TextTheme(
        titleSmall:
            TextStyle(fontWeight: FontWeight.normal, color: Colors.grey));
  }
}
