import 'package:flutter/material.dart';
import 'package:responsive_architecture/enum/device_screen_type.dart';
import 'package:responsive_architecture/responsive/responsivebuilder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  ScreenTypeLayout({Key key, @required this.mobile, this.tablet, this.desktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceType == DeviceType.Tablet) {
          if (tablet != null) {
            return tablet;
          }
        }
        if (sizingInformation.deviceType == DeviceType.Desktop) {
          if (desktop != null) {
            return desktop;
          }
        }
        return mobile;
      },
    );
  }
}
