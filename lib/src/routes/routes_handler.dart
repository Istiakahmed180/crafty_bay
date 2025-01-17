import 'package:crafty_bay/src/routes/routes.dart';
import 'package:crafty_bay/src/routes/routes_config.dart';
import 'package:get/get.dart';

// Routes Handle
List<GetPage> routesHandler = [
  // Splash Screen
  GetPage(name: BaseRoute.splashScreen, page: () => RoutesConfig.splashScreen),

  // Email Verification Screen
  GetPage(
      name: BaseRoute.emailVerificationScreen,
      page: () => RoutesConfig.emailVerificationScreen),

  // Email OTP Verification Screen
  GetPage(
      name: BaseRoute.emailOtpVerificationScreen,
      page: () => RoutesConfig.emailOtpVerificationScreen),

  // Complete Profile Screen
  GetPage(
      name: BaseRoute.completeProfileScreen,
      page: () => RoutesConfig.completeProfileScreen),

  // Common Navigation Screen
  GetPage(
      name: BaseRoute.commonNavigationScreen,
      page: () => RoutesConfig.commonNavigationScreen),
];
