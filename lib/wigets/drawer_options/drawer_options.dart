import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/wigets/drawer_options/drawer_option_mobile.dart';
import 'package:responsive_architecture/wigets/drawer_options/drawer_option_tablet.dart';

class DrawerOptions extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptions({Key key, this.title, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerOptionsMobilePortrait(
          title: title,
          iconData: iconData,
        ),
        landscape: DrawerOptionsMobileLandScape(
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        portrait: DrawerOptionsTabletPortrait(
          title: title,
          iconData: iconData,
        ),
        landscape: DrawerOptionsTabletLandScape(
          title: title,
          iconData: iconData,
        ),
      ),
    );
  }
}
