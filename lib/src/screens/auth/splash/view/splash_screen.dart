import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:crafty_bay/src/screens/auth/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: REdgeInsets.all(20),
        child: OrientationBuilder(
          builder: (context, orientation) {
            final isPortrait = orientation == Orientation.portrait;
            return _buildSplashContent(context, isPortrait);
          },
        ),
      ),
    );
  }

  Widget _buildSplashContent(BuildContext context, bool isPortrait) {
    final logoSize = isPortrait ? 120.0 : 50.0;
    final loaderSize = isPortrait ? 25.0.w : 12.0.w;
    final textFontSize = isPortrait ? 14.sp : 7.sp;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        SvgAssetsCmn(
          svgAsset: SvgAssets.bgLogo,
          svgWidth: logoSize,
        ),
        const Spacer(),
        SizedBox(
          width: loaderSize,
          height: loaderSize,
          child: CircularProgressIndicator(
            color: AppColors.primary,
            strokeWidth: 3,
            backgroundColor: AppColors.secondary,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          "Version 1.0",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.grey,
                fontSize: textFontSize,
              ),
        ),
      ],
    );
  }
}
