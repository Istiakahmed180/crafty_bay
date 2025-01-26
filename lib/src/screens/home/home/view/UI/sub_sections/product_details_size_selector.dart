import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsSizeSelector extends StatelessWidget {
  const ProductDetailsSizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: AppColors.lightBlack, fontSize: 16),
        ),
        Row(
          children: [
            _sizeBox(context, "X"),
            _sizeBox(context, "XL", isSelected: true),
            _sizeBox(context, "2L"),
            _sizeBox(context, "X"),
          ],
        )
      ],
    );
  }

  Widget _sizeBox(BuildContext context, String size,
      {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.lightBlack,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: isSelected ? AppColors.white : AppColors.lightBlack,
                ),
          ),
        ),
      ),
    );
  }
}
