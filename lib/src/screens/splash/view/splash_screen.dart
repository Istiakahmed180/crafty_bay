import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: REdgeInsets.all(20),
        child: Column(
          spacing: 10.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgAssetsCmn(
              svgAsset: SvgAssets.bgLogo,
              svgWidth: 120,
            ),
            Spacer(),
            SizedBox(
              width: 25.w,
              height: 25.w,
              child: CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 3,
                backgroundColor: AppColors.secondary,
              ),
            ),
            Text(
              "Version 1.0",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: AppColors.grey, fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
