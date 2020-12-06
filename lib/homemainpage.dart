import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'model/Modeldata.dart';

class HomeMainPage extends StatefulWidget {
  final Modeldata model;
  HomeMainPage(this.model);
  @override
  _HomeMainPage createState() => _HomeMainPage();
}

class _HomeMainPage extends State<HomeMainPage> {
  @override
  void initState() {
    widget.model.fatchprofiledata();
    print(".....");
    print(widget.model.userdatalist.length);
    super.initState();
  }

  Widget _buildAmbuliceList() {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Consumer<Modeldata>(
        builder: (context, modeldata, child) {
          Widget conten = Center(
            child: Text("There have no data"),
          );
          print(widget.model.userdatalist.length);
          if (modeldata.userdatalist.length > 0 && !modeldata.isloading) {
            return conten = HomePage();
          } else if (modeldata.isloading) {
            return conten = Center(
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
