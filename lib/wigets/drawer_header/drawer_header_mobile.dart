import 'package:flutter/material.dart';

class DrawerHeaderMobilePortrait extends StatelessWidget {
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

class DrawerHeaderMobileLandScape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
