import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get getLightTheme {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.white,
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonThemeData(),
        navigationBarTheme: _buildNavigationBarThemeData());
  }

  static NavigationBarThemeData _buildNavigationBarThemeData() {
    return NavigationBarThemeData(
      backgroundColor: AppColors.white,
      elevation: 8,
      indicatorColor: AppColors.primary.withAlpha(25),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(color: AppColors.primary, fontSize: 16);
        }
        return TextStyle(color: AppColors.grey, fontSize: 16);
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: AppColors.primary, size: 30);
        }
        return IconThemeData(color: AppColors.grey, size: 30);
      }),
      surfaceTintColor: Colors.transparent,
      shadowColor: AppColors.black.withAlpha(50),
    );
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
