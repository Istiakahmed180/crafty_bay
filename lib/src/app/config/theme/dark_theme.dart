import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData get getDarkTheme {
    return ThemeData(
        brightness: Brightness.dark, colorSchemeSeed: AppColors.primary);
  }
}
