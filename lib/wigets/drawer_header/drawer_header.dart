import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/wigets/drawer_header/drawer_header_mobile.dart';
import 'package:responsive_architecture/wigets/drawer_header/drawer_header_tablet.dart';

class DrawerHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerHeaderMobilePortrait(),
        landscape: DrawerHeaderMobileLandScape(),
      ),
      tablet: OrientationLayout(
        portrait: DrawerHeaderTabletPortrait(),
        landscape: DrawerHeaderTabletLandScape(),
      ),
    );
  }
}
