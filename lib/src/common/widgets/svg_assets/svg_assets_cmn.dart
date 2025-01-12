import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgAssetsCmn extends StatelessWidget {
  const SvgAssetsCmn(
      {super.key, required this.svgAsset, this.svgWidth, this.svgHeight});

  final String svgAsset;
  final double? svgWidth;
  final double? svgHeight;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgAsset,
      width: svgWidth?.w,
      height: svgHeight?.h,
    );
  }
}
