import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(
      Duration(seconds: 5),
      // () => Get.offNamed(BaseRoute.emailVerificationScreen),
    );
  }
}
