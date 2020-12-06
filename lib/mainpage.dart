import 'package:TourismApp/homemainpage.dart';
import 'package:flutter/material.dart';
import 'model/Modeldata.dart';

class HomeMain extends StatefulWidget {
  final Modeldata model;
  HomeMain(this.model);
  @override
  _HomeMainPage createState() => _HomeMainPage();
}

class _HomeMainPage extends State<HomeMain> {
  @override
  void initState() {
    widget.model.fatchprofiledata();
    print(".....");
    print(widget.model.userdatalist.length);
    super.initState();
  }

  Future<Null> builds() async {
    await widget.model.fatchprofiledata();
    print("aaaa");
    print(widget.model.userdatalist.length);
  }

  // Widget _buildAmbuliceList() {
  //   return Scaffold(
  //       body: Container(
  //     decoration: BoxDecoration(color: Colors.white),
  //     child: Consumer<Modeldata>(
  //       builder: (context, modeldata, child) {
  //         Widget conten = Center(
  //           child: Text("There have no data"),
  //         );
  //         print(widget.model.userdatalist.length);
  //         if (modeldata.userdatalist.length > 0 && !modeldata.isloading) {
  //           conten = HomePage();
  //         } else if (modeldata.isloading) {
  //           conten = Center(
  //             child: CircularProgressIndicator(
  //               backgroundColor: Colors.red,
  //             ),
  //           );
  //         }
  //         return conten;
  //         //  RefreshIndicator(
  //         //     child: conten, onRefresh: modeldata.fatchambulancelist());
  //       },
  //     ),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    builds();
    return Scaffold(
      body: HomeMainPage(widget.model),
    );
  }
}
