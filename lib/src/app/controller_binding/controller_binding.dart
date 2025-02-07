import 'package:crafty_bay/src/common/controller/navigation_cmn/navigation_cmn_controller.dart';
import 'package:crafty_bay/src/screens/auth/email_verification/controller/email_verification_controller.dart';
import 'package:crafty_bay/src/screens/auth/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(EmailVerificationController());
    Get.put(NavigationCmnController());
  }
}
