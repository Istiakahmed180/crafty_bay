import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsQuantitySelector extends StatelessWidget {
  const ProductDetailsQuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _quantityButton(Icons.add_outlined),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "01",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        _quantityButton(Icons.remove_outlined),
      ],
    );
  }

  Widget _quantityButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(
        icon,
        color: AppColors.white,
      ),
    );
  }
}
