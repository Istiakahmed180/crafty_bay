import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Padding(
        padding: EdgeInsets.only(left: 4),
        child: SvgAssetsCmn(
          svgAsset: SvgAssets.navLogo,
          svgWidth: 120,
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: AppColors.grey.withAlpha(20),
          child: Icon(
            Icons.person_outline,
            color: AppColors.grey,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        CircleAvatar(
          backgroundColor: AppColors.grey.withAlpha(20),
          child: Icon(
            Icons.call_outlined,
            color: AppColors.grey,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        CircleAvatar(
          backgroundColor: AppColors.grey.withAlpha(20),
          child: Icon(
            Icons.notifications_on_outlined,
            color: AppColors.grey,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
