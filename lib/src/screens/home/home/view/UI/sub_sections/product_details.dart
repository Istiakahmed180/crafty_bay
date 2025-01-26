import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/screens/home/home/view/ui/sub_sections/product_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        title: Text("Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                ProductCarouselSlider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Text(
                          "Happy New Year Special Deal Save 30%",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.lightBlack,
                                  fontSize: 16.sp),
                        ),
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Container(
                            padding: REdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.add_outlined,
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            "01",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Container(
                            padding: REdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.remove_outlined,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    spacing: 15,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: AppColors.lightBlack,
                                    fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Text(
                        "Reviews",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: REdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: AppColors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        "Color",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppColors.lightBlack, fontSize: 16.sp),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColors.black,
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColors.primary,
                            child: Icon(
                              Icons.check,
                              color: AppColors.white,
                            ),
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.brown,
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.blueGrey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(
                        "Size",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppColors.lightBlack, fontSize: 16.sp),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: AppColors.lightBlack, width: 1.5)),
                            child: Center(
                                child: Text(
                              "X",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.lightBlack),
                            )),
                          ),
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: AppColors.primary, width: 1.5)),
                            child: Center(
                                child: Text(
                              "XL",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.white),
                            )),
                          ),
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: AppColors.lightBlack, width: 1.5)),
                            child: Center(
                                child: Text(
                              "2L",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.lightBlack),
                            )),
                          ),
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                    color: AppColors.lightBlack, width: 1.5)),
                            child: Center(
                                child: Text(
                              "X",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.lightBlack),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: AppColors.lightBlack),
                      ),
                      Text(
                        textAlign: TextAlign.justify,
                        "Reference site about Lorum Ipsum, giving information on its origins, as well as a random lipsum generator reference site about Lorem Ipsum, giving information on its origins, as well as a random lipsum generator.",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: AppColors.grey,
                              fontSize: 13.sp,
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: REdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.black.withValues(alpha: 0.5),
                          fontSize: 15.sp),
                    ),
                    Text(
                      "\$1,000",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.infinite,
                        padding: EdgeInsets.symmetric(horizontal: 12.w)),
                    onPressed: () {},
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
