import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/png/png_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.1),
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      width: 155.w,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 155.w,
              child: Image.asset(PngAssets.nickShoe),
            ),
          ),
          Container(
            padding: REdgeInsets.all(8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r)),
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Year Special Shoe",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black.withValues(alpha: 0.7)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$100",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppColors.primary),
                    ),
                    Row(
                      children: [
                        Icon(
                          size: 20,
                          Icons.star_rounded,
                          color: AppColors.orangeAccent,
                        ),
                        SizedBox(
                          width: 0.w,
                        ),
                        Text("4.8",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black
                                        .withValues(alpha: 0.7))),
                      ],
                    ),
                    Container(
                      padding: REdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        size: 20,
                        color: AppColors.white.withValues(alpha: 0.5),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
