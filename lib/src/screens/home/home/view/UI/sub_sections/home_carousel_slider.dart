import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/png/png_assets.dart';
import 'package:crafty_bay/src/screens/home/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselSlider extends StatelessWidget {
  HomeCarouselSlider({super.key});

  final HomeController controller = Get.put(HomeController());
  final PageController pageController = PageController();

  final List<Map<String, String>> carouselItems = [
    {
      "title": "Happy New Year",
      "subtitle": "Special Deal",
      "offer": "Save 30%",
      "image": PngAssets.nickShoe,
    },
    {
      "title": "Exclusive Offer",
      "subtitle": "Limited Time",
      "offer": "Save 40%",
      "image": PngAssets.nickShoe,
    },
    {
      "title": "Holiday Sale",
      "subtitle": "Best Deals",
      "offer": "Save 50%",
      "image": PngAssets.nickShoe,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarousel(),
        const SizedBox(height: 10),
        _buildIndicator(),
      ],
    );
  }

  Widget _buildCarousel() {
    return SizedBox(
      height: 170,
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
    );
  }

  Widget _buildCarouselItem(Map<String, String> item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                item["image"]!,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["title"]!,
                  style: _textStyle(),
                ),
                Text(
                  item["subtitle"]!,
                  style: _textStyle(),
                ),
                Text(
                  item["offer"]!,
                  style: _textStyle(),
                ),
                const SizedBox(height: 10),
                _buildBuyNowButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuyNowButton() {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.white,
        ),
        onPressed: () {},
        child: Text(
          "Buy Now",
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.normal,
          ),
        ),
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

  TextStyle _textStyle() {
    return TextStyle(
      fontSize: 18.sp,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    );
  }
}
