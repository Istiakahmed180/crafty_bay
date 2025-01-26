import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/png/png_assets.dart';
import 'package:crafty_bay/src/screens/home/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductCarouselSlider extends StatelessWidget {
  ProductCarouselSlider({super.key});

  final HomeController controller = Get.put(HomeController());
  final PageController pageController = PageController();

  final List<Map<String, String>> carouselItems = [
    {
      "image": PngAssets.nickShoe,
    },
    {
      "image": PngAssets.nickShoe,
    },
    {
      "image": PngAssets.nickShoe,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          color: AppColors.grey.withAlpha(20),
          child: PageView.builder(
            controller: pageController,
            itemCount: carouselItems.length,
            onPageChanged: (index) {
              controller.updateIndex(index);
            },
            itemBuilder: (context, index) {
              final item = carouselItems[index];
              return _buildCarouselItem(item);
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: _buildIndicator(),
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(Map<String, String> item) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h, left: 16, top: 10, right: 16),
      child: Image.asset(
        item["image"]!,
      ),
    );
  }

  Widget _buildIndicator() {
    return SmoothPageIndicator(
      controller: pageController,
      count: carouselItems.length,
      effect: WormEffect(
        dotHeight: 12,
        dotWidth: 12,
        activeDotColor: AppColors.primary,
        dotColor: AppColors.grey.withAlpha(50),
      ),
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        controller.updateIndex(index);
      },
    );
  }
}
