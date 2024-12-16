import 'package:crafty_bay/src/application/responsive/device_config/device_config.dart';
import 'package:crafty_bay/src/application/responsive/device_config/device_type.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceType = DeviceConfig.getDeviceType(size.width);

    switch (deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet ?? mobile;
      case DeviceType.desktop:
        return desktop;
      default:
        return mobile;
    }
  }
}
