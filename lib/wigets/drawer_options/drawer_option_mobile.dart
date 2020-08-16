import 'package:flutter/material.dart';

class DrawerOptionsMobilePortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  DrawerOptionsMobilePortrait({this.title, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      child: Row(
        children: <Widget>[
          Icon(iconData, size: 25),
          SizedBox(width: 25),
          Text(
            title,
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }
}

class DrawerOptionsMobileLandScape extends StatelessWidget {
  final IconData iconData;
  DrawerOptionsMobileLandScape({this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Icon(
        iconData,
        size: 40,
      ),
    );
  }
}
