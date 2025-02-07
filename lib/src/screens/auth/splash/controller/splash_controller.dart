import 'package:crafty_bay/src/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<void> moveToNextScreen() async {
    await Future.delayed(
      Duration(seconds: 5),
      () => Get.offNamed(BaseRoute.emailVerificationScreen),
    );
  }
}
