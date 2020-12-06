import 'package:TourismApp/homemainpage.dart';
import 'package:TourismApp/homepage.dart';
import 'package:TourismApp/mainpage.dart';
import 'package:TourismApp/model/Modeldata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/Modeldata.dart';
import 'model/Modeldata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Modeldata modeldata = Modeldata();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Modeldata(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeMain(modeldata),
      ),
    );
  }
}
