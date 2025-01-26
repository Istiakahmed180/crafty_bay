import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsColorSelector extends StatelessWidget {
  const ProductDetailsColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.lightBlack, fontSize: 16),
        ),
        Row(
          children: [
            _colorCircle(AppColors.black),
            _colorCircle(AppColors.primary, isSelected: true),
            _colorCircle(Colors.brown),
            _colorCircle(Colors.grey),
            _colorCircle(Colors.blueGrey),
          ],
        )
      ],
    );
  }

  Widget _colorCircle(Color color, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: color,
        child: isSelected
            ? Icon(
                Icons.check,
                color: AppColors.white,
              )
            : null,
      ),
    );
  }
}
