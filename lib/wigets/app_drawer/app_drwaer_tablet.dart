import 'package:flutter/material.dart';
import 'package:responsive_architecture/wigets/app_drawer/app_drawer.dart';
import 'package:responsive_architecture/wigets/drawer_header/drawer_header.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  const AppDrawerTabletPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...AppDrawer.getDrawerOptions(),
          DrawerHeaders(),
        ],
      ),
    );
  }
}

class AppDrawerTabletLandScape extends StatelessWidget {
  const AppDrawerTabletLandScape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(children: [
          DrawerHeaders(),
          ...AppDrawer.getDrawerOptions(),
        ]),
      ),
    );
  }
}
