import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/app/constants/assets_path/svg/svg_assets.dart';
import 'package:crafty_bay/src/common/widgets/svg_assets/svg_assets_cmn.dart';
import 'package:crafty_bay/src/screens/email_otp_verification/controller/email_otp_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EmailOtpVerificationScreen extends StatelessWidget {
  const EmailOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailOtpVerificationController =
        Get.put(EmailOtpVerificationController());

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: isPortrait ? 35.w : 80.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: (isPortrait ? 100 : 50).h),
                  _buildLogo(isPortrait),
                  SizedBox(height: 8.h),
                  _buildTitle(context, isPortrait),
                  SizedBox(height: 5.h),
                  _buildSubtitle(context),
                  SizedBox(height: 20.h),
                  _buildForm(
                      context, emailOtpVerificationController, isPortrait),
                  _buildCountAndResendCode(context, isPortrait),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLogo(bool isPortrait) {
    return SvgAssetsCmn(
      svgAsset: SvgAssets.bgLogo,
      svgWidth: isPortrait ? 120.0 : 40.0,
    );
  }

  Widget _buildTitle(BuildContext context, bool isPortrait) {
    return Text(
      "Enter OTP Code",
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.lightBlack,
            fontSize: isPortrait ? 32.0 : 28.0,
          ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      "A 4 Digit OTP Code has been Sent",
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: AppColors.grey,
          ),
    );
  }

  Widget _buildForm(BuildContext context,
      EmailOtpVerificationController controller, bool isPortrait) {
    return Column(
      children: [
        _buildOtpVerification(context, controller),
        SizedBox(height: 5.h),
        _buildSubmitButton(controller),
      ],
    );
  }

  Widget _buildOtpVerification(
      BuildContext context, EmailOtpVerificationController controller) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      controller: controller.otpVerifyController,
      onChanged: (value) {
        controller.otpVerifyController.text = value;
      },
      pinTheme: PinTheme(
        inactiveBorderWidth: 1.5,
        activeBorderWidth: 1.5,
        selectedBorderWidth: 1.5,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(6),
        inactiveColor: AppColors.primary,
        activeColor: AppColors.secondary,
        selectedColor: AppColors.pinkRaspberry,
      ),
    );
  }

  Widget _buildSubmitButton(EmailOtpVerificationController controller) {
    return ElevatedButton(
      onPressed: controller.submitOtpVerify,
      child: const Text("Next"),
    );
  }

  Widget _buildCountAndResendCode(BuildContext context, bool isPortrait) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "This code will expire in ",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              TextSpan(
                text: "120s",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Resend Code",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        if (!isPortrait) SizedBox(height: 20.h),
      ],
    );
  }
}
