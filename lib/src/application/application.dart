import 'package:crafty_bay/src/application/theme/dark_theme.dart';
import 'package:crafty_bay/src/application/theme/light_theme.dart';
import 'package:crafty_bay/src/routing/routes.dart';
import 'package:crafty_bay/src/routing/routes_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: LightTheme.lightTheme,
        darkTheme: DarkTheme.darkTheme,
        initialRoute: AppRoutes.splash,
        getPages: routesHandler,
      ),
    );
  }
}
