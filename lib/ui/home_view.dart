import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/ui/home_mobile.dart';
import 'package:responsive_architecture/ui/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePotrait(),
        landscape: HomeMobileLandsacpe(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
