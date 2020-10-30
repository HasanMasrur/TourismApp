import 'dart:convert';

import 'package:TourismApp/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Modeldata extends ChangeNotifier {
  User _user;
  List<User> _userdatalist = [];

  List<User> get userdatalist {
    return _userdatalist;
  }

  fatchUserinfo() async {
    return await http
        .get("https://tourismapp-4294e.firebaseio.com/datalist.json")
        .then(
      (http.Response response) {
        List<User> fatchuserdata = [];
        print(response.body);
        Map<String, dynamic> fatchdata = json.decode(response.body);

        fatchdata.forEach(
          (String userid, dynamic datalist) {
            User _userdata = User(
                id: userid,
                placename: datalist['placename'],
                gold: datalist['gold'],
                silver: datalist['silver'],
                platinum: datalist['platinum'],
                discription: datalist['discription']);

            fatchuserdata.add(_userdata);
            notifyListeners();
          },
        );
        _userdatalist = fatchuserdata;
        notifyListeners();
      },
    );
  }
}
