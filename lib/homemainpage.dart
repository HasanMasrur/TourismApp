import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import 'homepage.dart';
import 'model/Modeldata.dart';

class HomeMainPage extends StatefulWidget {
  final Modeldata model;
  HomeMainPage(this.model);
  @override
  _HomeMainPage createState() => _HomeMainPage();
}

class _HomeMainPage extends State<HomeMainPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    widget.model.fatchprofiledata();
    print(".....");
    print(widget.model.userdatalist.length);
    super.initState();
  }

  @override
  _buildAmbuliceList() {
    print(widget.model.userdatalist.length);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: ScopedModelDescendant<Modeldata>(
        builder: (context, child, modeldata) {
          Widget conten = Center(
            child: Text('there have no data'),
          );
          if (modeldata.userdatalist.length > 0 && !modeldata.isloading) {
            conten = HomePage();
            print('done');
          } else if (modeldata.isloading) {
            conten = Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            );
          }
          return conten;
          //  RefreshIndicator(
          //     child: conten, onRefresh: modeldata.fatchambulancelist());
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _buildAmbuliceList(),
    );
  }
}
