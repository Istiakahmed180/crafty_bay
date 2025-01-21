import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.primary.withValues(alpha: 0.1)),
          child: Icon(
            icon,
            size: 45,
            color: AppColors.primary.withValues(alpha: 0.7),
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
        )
      ],
    );
  }
}
