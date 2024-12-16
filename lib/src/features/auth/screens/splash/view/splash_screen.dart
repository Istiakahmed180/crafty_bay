import 'package:crafty_bay/src/application/responsive/responsive_builder.dart';
import 'package:crafty_bay/src/common/widgets/desktop_view_message.dart';
import 'package:crafty_bay/src/features/auth/screens/splash/view/layout/splash_mobile_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
          mobile: SplashMobileScreen(), desktop: DesktopViewMessage()),
    );
  }
}
