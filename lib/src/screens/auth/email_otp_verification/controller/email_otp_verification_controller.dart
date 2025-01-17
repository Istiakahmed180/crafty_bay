import 'dart:async';

import 'package:crafty_bay/src/app/constants/app_colors.dart';
import 'package:crafty_bay/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class EmailOtpVerificationController extends GetxController {
  final otpVerifyController = TextEditingController();
  final RxInt countdown = 120.obs;
  final RxBool canResendCode = false.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startCountdown();
  }

  @override
  void onClose() {
    _timer?.cancel();
    otpVerifyController.dispose();
    super.onClose();
  }

  void startCountdown() {
    canResendCode.value = false;
    countdown.value = 120;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        timer.cancel();
        canResendCode.value = true;
      }
    });
  }

  void resendCode() {
    otpVerifyController.clear();
    Fluttertoast.showToast(
      msg: "OTP code has been resent",
      backgroundColor: AppColors.green,
    );
    startCountdown();
  }

  void submitOtpVerify() {
    final otpCode = otpVerifyController.text;
    if (otpCode.isEmpty || otpCode.length < 6) {
      Fluttertoast.showToast(
        msg: "Please enter a valid 6-digit OTP code",
        backgroundColor: AppColors.green,
      );
      return;
    }
    Get.offNamed(BaseRoute.completeProfileScreen);
    Get.delete<EmailOtpVerificationController>();
  }
}
