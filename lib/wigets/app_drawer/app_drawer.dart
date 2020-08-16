import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/wigets/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_architecture/wigets/app_drawer/app_drwaer_tablet.dart';
import 'package:responsive_architecture/wigets/drawer_options/drawer_options.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandScape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOptions(title: 'Account', iconData: Icons.person),
      DrawerOptions(title: 'Savings', iconData: Icons.track_changes),
      DrawerOptions(title: 'Location', iconData: Icons.place),
      DrawerOptions(title: 'Settings', iconData: Icons.settings),
    ];
  }
}
