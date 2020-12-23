import 'package:TourismApp/model/Modeldata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import 'homemainpage.dart';
import 'model/Modeldata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Modeldata modeldata = Modeldata();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ScopedModel<Modeldata>(
      model: modeldata,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeMainPage(modeldata),
      ),
    );
  }
}
