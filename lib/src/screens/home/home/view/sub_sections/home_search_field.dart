import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search_outlined,
            color: AppColors.grey,
          ),
          hintText: "Search",
          filled: true,
          fillColor: AppColors.grey.withAlpha(15),
          enabledBorder: _buildOutlineInputBorder(),
          border: _buildOutlineInputBorder(),
          errorBorder: _buildOutlineInputBorder(),
          focusedBorder: _buildOutlineInputBorder(),
          disabledBorder: _buildOutlineInputBorder(),
          focusedErrorBorder: _buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.grey.withAlpha(15)));
  }
}
