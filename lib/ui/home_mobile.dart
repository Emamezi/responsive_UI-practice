import 'package:flutter/material.dart';
import 'package:responsive_architecture/wigets/app_drawer/app_drawer.dart';
import 'package:responsive_architecture/wigets/app_drawer/app_drawer_mobile.dart';

class HomeMobilePotrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePotrait({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawerMobile(),
      body: SafeArea(
        // top: true,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class HomeMobileLandsacpe extends StatelessWidget {
  const HomeMobileLandsacpe({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          AppDrawerMobile(),
        ],
      ),
    );
  }
}
