import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class EmailOtpVerificationController extends GetxController {
  final otpVerifyController = TextEditingController();

  void submitOtpVerify() {
    final otpCode = otpVerifyController.text;
    if (otpCode.isEmpty || otpCode.length < 6) {
      Fluttertoast.showToast(
          msg: "Please enter a valid 6-digit OTP code",
          backgroundColor: AppColors.green);
      Get.delete<EmailOtpVerificationController>();
      return;
    }
  }
}
