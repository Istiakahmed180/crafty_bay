import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSectionSlider extends StatelessWidget {
  const HomeSectionSlider(
      {super.key, required this.height, required this.widgetSection});

  final double height;
  final Widget widgetSection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.separated(
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
