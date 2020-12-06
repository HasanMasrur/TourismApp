import 'dart:ui';

import 'package:TourismApp/destinations_box.dart';
import 'package:TourismApp/model/Modeldata.dart';

import 'package:TourismApp/popular_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'destinations_box.dart';
import 'model/Modeldata.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  // @override
  // void initState() {
  //   Modeldata modeldata = Modeldata();
  //   modeldata.fatchUserinfo();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFF5F5DC),
        key: _globalKey,
        drawer: Drawer(),
        body: Consumer<Modeldata>(
          builder: (context, modeldata, child) {
            return SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35, left: 15),
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
                  SizedBox(
                    height: 10,
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
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 230,
                      margin: EdgeInsets.only(right: 10),
                      child: ListView.builder(
                          itemCount: modeldata.userdatalist.length,
                          itemBuilder: (context, index) {
                            final data = modeldata.userdatalist[index];
                            return DestinationsBox(
                              data: data,
                            );
                          })),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'New Destinations',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      height: 210,
                      margin: EdgeInsets.only(left: 20),
                      child: ListView.builder(
                          itemCount: modeldata.userdatalist.length,
                          itemBuilder: (context, index) {
                            final data = modeldata.userdatalist[index];
                            return DestinationsBox(
                              data: data,
                            );
                          }))
                ],
              ),
            );
          },
        ));
  }
}
