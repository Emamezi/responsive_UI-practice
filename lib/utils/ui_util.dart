import 'package:flutter/widgets.dart';
import 'package:responsive_architecture/enum/device_screen_type.dart';

DeviceType getDeviceType(MediaQueryData mediaQuery) {
  // var orientation = mediaQuery.orientation;

  double deviceWidth = mediaQuery.size.shortestSide;
  // if (orientation == Orientation.landscape) {
  //   deviceWidth = mediaQuery.size.height;
  // } else {
  //   deviceWidth = mediaQuery.size.width;
  // }
  if (deviceWidth > 900) {
    return DeviceType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceType.Tablet;
  }
  return DeviceType.Mobile;
}
