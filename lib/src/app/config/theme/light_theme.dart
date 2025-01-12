import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get getLightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorSchemeSeed: AppColors.primary,
    );
  }
}
