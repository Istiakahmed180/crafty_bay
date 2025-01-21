import 'package:crafty_bay/src/screens/home/home/view/sub_sections/home_app_bar.dart';
import 'package:crafty_bay/src/screens/home/home/view/sub_sections/home_carousel_slider.dart';
import 'package:crafty_bay/src/screens/home/home/view/sub_sections/home_categories_slider.dart';
import 'package:crafty_bay/src/screens/home/home/widgets/home_header_and_widget.dart';
import 'package:crafty_bay/src/screens/home/home/view/sub_sections/home_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              HomeSearchField(),
              SizedBox(
                height: 10.h,
              ),
              HomeCarouselSlider(),
              SizedBox(
                height: 10.h,
              ),
              HomeHeaderAndWidget(
                headerTitle: "All Categories",
                headerActionTitle: "See All",
                widgetSection: HomeCategoriesSlider(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
