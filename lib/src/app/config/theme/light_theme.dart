import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get getLightTheme {
    return ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: AppColors.primary,
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonThemeData());
  }

  static ElevatedButtonThemeData _buildElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12),
            textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.white,
            fixedSize: Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6))));
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
        fillColor: AppColors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        hintStyle: TextStyle(color: AppColors.grey),
        border: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildInputFocusedBorder(),
        errorBorder: _buildErrorInputBorder());
  }

  static OutlineInputBorder _buildErrorInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: AppColors.red));
  }

  static OutlineInputBorder _buildInputFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: AppColors.primary, width: 1.5),
    );
  }

  static OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: AppColors.primary,
      ),
    );
  }
}
