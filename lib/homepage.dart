import 'dart:ui';

import 'package:TourismApp/popular_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 15),
            height: 50,
            child: Row(
              children: [
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.alignLeft),
                    onPressed: () {
                      _globalKey.currentState.openDrawer();
                    }),
                SizedBox(
                  width: 80,
                ),
                Container(
                  width: 230,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              ' Welcome ? \n Find Your Trip Here',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            child: Text(
              'Popular',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PopularBox(
                  image: AssetImage('assets/darjeeling.jpg'),
                  placename: "darjeeling",
                ),
                SizedBox(
                  width: 10,
                ),
                PopularBox(
                  image: AssetImage('assets/Sikkim.png'),
                  placename: "Gangtok",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
