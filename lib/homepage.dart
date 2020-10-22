import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          height: 50,
          color: Colors.blue,
          child: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _globalKey.currentState.openDrawer();
                  })
            ],
          ),
        )
      ]),
    );
  }
}
