import 'package:crafty_bay/src/application/colors/app_colors.dart';
import 'package:crafty_bay/src/application/path/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
    );
  }

  Widget _buildAppVersionText(BuildContext context) {
    return Text(
      "Version 1.0",
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildLoadingIndicator() {
    return SizedBox(
        width: 30.w,
        height: 30.w,
        child: CircularProgressIndicator(
          color: AppColors.themeColor,
          backgroundColor: Color(0xFFAA0F64),
        ));
  }

  Widget _buildLogoSection() {
    return SvgPicture.asset(
      SvgPath.appLogo,
      width: 100.w,
    );
  }
}
