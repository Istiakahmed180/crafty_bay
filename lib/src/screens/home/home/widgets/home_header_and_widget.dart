import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderAndWidget extends StatelessWidget {
  const HomeHeaderAndWidget({
    super.key,
    required this.headerTitle,
    required this.headerActionTitle,
    required this.widgetSection,
  });

  final String headerTitle;
  final String headerActionTitle;
  final Widget widgetSection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerTitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black.withValues(alpha: 0.7),
                  ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                headerActionTitle,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary.withValues(alpha: 0.7),
                    ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        widgetSection
      ],
    );
  }
}
