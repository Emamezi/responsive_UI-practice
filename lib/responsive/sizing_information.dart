import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enum/device_screen_type.dart';

class SizingInformation {
  // Orientation orientation;
  DeviceType deviceType;
  Size screenSize;
  Size localWidgetSize;

  SizingInformation(
      {this.deviceType,
      this.localWidgetSize,
      // this.orientation,
      this.screenSize});

  @override
  String toString() {
    // TODO: implement toString
    return 'devicetype : $deviceType, screensize:$screenSize, localwidgetsize:$localWidgetSize';
  }
}
