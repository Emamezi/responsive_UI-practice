import 'package:flutter/material.dart';

class DrawerOptionsTabletPortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  DrawerOptionsTabletPortrait({this.title, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            iconData,
            size: 45,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }
}

class DrawerOptionsTabletLandScape extends StatelessWidget {
  final String title;
  final IconData iconData;
  DrawerOptionsTabletLandScape({this.title, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            iconData,
            size: 45,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
