import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_util.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  ResponsiveBuilder({this.builder});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
        screenSize: mediaQuery.size,
        deviceType: getDeviceType(mediaQuery),
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }
}
