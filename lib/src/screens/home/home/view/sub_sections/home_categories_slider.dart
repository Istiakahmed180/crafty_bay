import 'package:crafty_bay/src/screens/home/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategoriesSlider extends StatelessWidget {
  const HomeCategoriesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.w,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(icon: Icons.tv_outlined, title: "Fashion");
        },
      ),
    );
  }
}
