import 'package:crafty_bay/src/app/config/theme/dark_theme.dart';
import 'package:crafty_bay/src/app/config/theme/light_theme.dart';
import 'package:crafty_bay/src/app/constants/app_strings.dart';
import 'package:crafty_bay/src/routes/routes.dart';
import 'package:crafty_bay/src/routes/routes_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fade,
        transitionDuration: Duration(milliseconds: 600),
        theme: LightTheme.getLightTheme,
        darkTheme: DarkTheme.getDarkTheme,
        themeMode: ThemeMode.light,
        initialRoute: BaseRoute.splashScreen,
        getPages: routesHandler,
      ),
    );
  }
}
