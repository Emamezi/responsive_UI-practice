import 'package:flutter/material.dart';

class DrawerHeaderTabletLandScape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Emamezi Ebebeinwe'),
                Text('Flutter Developer'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrawerHeaderTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey,
    ));
  }
}
