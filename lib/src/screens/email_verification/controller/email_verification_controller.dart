import 'package:crafty_bay/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  final emailAddressController = TextEditingController();

  void submitEmailVerification() {
    Get.delete<EmailVerificationController>();
    Get.toNamed(BaseRoute.emailOtpVerificationScreen);
  }
}
