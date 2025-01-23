import 'package:crafty_bay/src/screens/home/home/view/UI/sub_sections/home_app_bar.dart';
import 'package:crafty_bay/src/screens/home/home/view/UI/sub_sections/home_carousel_slider.dart';
import 'package:crafty_bay/src/screens/home/home/view/widgets/category_card.dart';
import 'package:crafty_bay/src/screens/home/home/view/widgets/home_section_slider.dart';
import 'package:crafty_bay/src/screens/home/home/view/widgets/home_header_and_widget.dart';
import 'package:crafty_bay/src/screens/home/home/view/UI/sub_sections/home_search_field.dart';
import 'package:crafty_bay/src/screens/home/home/view/widgets/product_card.dart';
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
                height: 15.h,
              ),
              HomeHeaderAndWidget(
                headerTitle: "All Categories",
                onTap: () {},
                widgetSection: HomeSectionSlider(
                  height: 100,
                  widgetSection:
                      CategoryCard(icon: Icons.tv_outlined, title: "Fashion"),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              HomeHeaderAndWidget(
                headerTitle: "Popular",
                onTap: () {},
                widgetSection: HomeSectionSlider(
                  verticalPadding: 10,
                  height: 180,
                  widgetSection: ProductCard(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              HomeHeaderAndWidget(
                headerTitle: "Special",
                onTap: () {},
                widgetSection: HomeSectionSlider(
                  verticalPadding: 10,
                  height: 180,
                  widgetSection: ProductCard(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              HomeHeaderAndWidget(
                headerTitle: "New",
                onTap: () {},
                widgetSection: HomeSectionSlider(
                  verticalPadding: 10,
                  height: 180,
                  widgetSection: ProductCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
