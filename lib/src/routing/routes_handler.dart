import 'package:crafty_bay/src/routing/routes.dart';
import 'package:crafty_bay/src/routing/routes_binding.dart';
import 'package:get/get.dart';

List<GetPage> routesHandler = [
  // 1. Splash Screen
  GetPage(name: AppRoutes.splash, page: () => RoutesBinding.splash)
];
