import 'package:crafty_bay/src/application/colors/app_colors.dart';
import 'package:crafty_bay/src/application/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashMobileScreen extends StatelessWidget {
  const SplashMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: REdgeInsets.all(16),
        child: Column(
          children: [
            Spacer(),
            _buildLogoSection(),
            Spacer(),
            _buildLoadingIndicator(),
            SizedBox(
              height: 15.h,
            ),
            _buildAppVersionText(context)
          ],
        ),
      ),
    );
  }

  Widget _buildAppVersionText(BuildContext context) {
    return Text(
      "Version 1.0",
      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12.sp),
    );
  }

  Widget _buildLoadingIndicator() {
    return SizedBox(
        width: 25.w,
        height: 25.w,
        child: CircularProgressIndicator(
          color: AppColors.themeColor,
          backgroundColor: Color(0xFFAA0F64),
        ));
  }

  Widget _buildLogoSection() {
    return SvgPicture.asset(
      SvgPath.appLogo,
      width: 120.w,
    );
  }
}
