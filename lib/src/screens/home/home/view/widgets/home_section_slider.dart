import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSectionSlider extends StatelessWidget {
  const HomeSectionSlider(
      {super.key,
      required this.height,
      required this.widgetSection,
      this.verticalPadding});

  final double height;
  final Widget widgetSection;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 0),
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.w,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return widgetSection;
        },
      ),
    );
  }
}
