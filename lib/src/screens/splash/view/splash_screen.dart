import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(
              SvgAssets.bgLogo,
              width: 120.w,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
