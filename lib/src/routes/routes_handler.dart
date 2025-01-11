import 'package:crafty_bay/src/routes/routes.dart';
import 'package:crafty_bay/src/routes/routes_config.dart';
import 'package:get/get.dart';

// Routes Handle
List<GetPage> routesHandler = [
  // Splash Screen
  GetPage(name: BaseRoute.splashScreen, page: () => RoutesConfig.splashScreen),
];
