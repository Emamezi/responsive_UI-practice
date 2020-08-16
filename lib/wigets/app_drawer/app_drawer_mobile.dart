import 'package:flutter/material.dart';
import 'package:responsive_architecture/wigets/drawer_header/drawer_header.dart';
import 'app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
        width: orientation == Orientation.portrait ? 250 : 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              color: Colors.black12,
            )
          ],
        ),
        child: Column(
            mainAxisAlignment: orientation == Orientation.landscape
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.start,
            children: <Widget>[
              DrawerHeaders(),
              ...AppDrawer.getDrawerOptions()
            ]));
  }
}
