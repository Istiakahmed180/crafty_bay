import 'package:crafty_bay/src/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(
      Duration(seconds: 3),
      () => Get.offNamed(BaseRoute.emailVerificationScreen),
    );
  }
}
