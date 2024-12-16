import 'package:crafty_bay/src/application/responsive/device_config/device_size.dart';
import 'package:crafty_bay/src/application/responsive/device_config/device_type.dart';

class DeviceConfig {
  static getDeviceType(double width) {
    if (width < DeviceSize.mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= DeviceSize.mobileMaxSize &&
        width < DeviceSize.tabletMaxSize) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}
