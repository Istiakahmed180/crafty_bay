import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:crafty_bay/src/screens/email_verification/controller/email_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final EmailVerificationController emailVerificationController =
      Get.put(EmailVerificationController());
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          SvgAssetsCmn(
            svgAsset: SvgAssets.bgLogo,
            svgWidth: 120,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Welcome Back",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w600, color: AppColors.lightBlack),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Please Enter Your Email Address",
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: AppColors.grey),
          ),
          SizedBox(
            height: 20.h,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller:
                        emailVerificationController.emailAddressController,
                    decoration: InputDecoration(hintText: "Email Address"),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Next"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
