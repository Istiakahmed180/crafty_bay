import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_carousel_slider.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_details_color_selector.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_details_quantity_selector.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_details_size_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductCarouselSlider(),
                  _buildProductHeader(context),
                  _buildRatingSection(context),
                  _buildColorSelector(),
                  _buildSizeSelector(),
                  _buildDescription(context),
                ],
              ),
            ),
          ),
          _buildPriceAndCartSection(context),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios, size: 20),
      ),
      title: const Text("Product Details"),
    );
  }

  Widget _buildProductHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Text(
              "Happy New Year Special Deal Save 30%",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightBlack,
                    fontSize: 16.sp,
                  ),
            ),
          ),
          const ProductDetailsQuantitySelector(),
        ],
      ),
    );
  }

  Widget _buildRatingSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        spacing: 8,
        children: [
          _buildStarRating(context),
          _buildReviewLink(context),
          _buildFavoriteButton(),
        ],
      ),
    );
  }

  Widget _buildStarRating(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 3.h),
          child: Icon(
            Icons.star_rate_rounded,
            color: AppColors.secondary,
          ),
        ),
        Text(
          "4.8",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.lightBlack,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }

  Widget _buildReviewLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        "Reviews",
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.normal,
            ),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return Container(
      padding: REdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Icon(
        Icons.favorite_border_outlined,
        color: AppColors.white,
        size: 20,
      ),
    );
  }

  Widget _buildColorSelector() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: const ProductDetailsColorSelector(),
    );
  }

  Widget _buildSizeSelector() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: const ProductDetailsSizeSelector(),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Description",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AppColors.lightBlack),
          ),
          Text(
            "Reference site about Lorum Ipsum, giving information on its origins, as well as a random lipsum generator reference site about Lorem Ipsum, giving information on its origins, as well as a random lipsum generator.",
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.grey,
                  fontSize: 13.sp,
                ),
          )
        ],
      ),
    );
  }

  Widget _buildPriceAndCartSection(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPriceColumn(context),
          _buildAddToCartButton(context),
        ],
      ),
    );
  }

  Widget _buildPriceColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.black.withValues(alpha: 0.5),
                fontSize: 15.sp,
              ),
        ),
        Text(
          "\$1,000",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }

  Widget _buildAddToCartButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.infinite,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
      ),
      onPressed: () {},
      child: const Text(
        "Add To Cart",
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }
}
