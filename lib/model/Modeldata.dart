import 'dart:convert';
import 'package:TourismApp/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

class Modeldata extends ChangeNotifier {
  List<User> _userdatalist = [];
  bool _isloading = false;

  List<User> get userdatalist {
    return _userdatalist;
  }

  Future<bool> fatchprofiledata() async {
    _isloading = true;

    return await http
        .get("https://tourismapp-4294e.firebaseio.com/datalist.json")
        .then((http.Response response) {
      print(response.body);
      List<User> _profilepagelist = [];
      notifyListeners();
      Map<String, dynamic> fatchdata = json.decode(response.body);
      if (fatchdata == null) {
        _isloading = false;
        notifyListeners();
        return;
      }

      fatchdata.forEach((String profileid, dynamic datalist) {
        final User _profile = User(
            id: profileid,
            placename: datalist['placename'],
            image: datalist['image'],
            gold: datalist['gold'],
            silver: datalist['silver'],
            platinum: datalist['platinum'],
            discription: datalist['discription']);
        _profilepagelist.add(_profile);
      });
      notifyListeners();
      _userdatalist = _profilepagelist;
      print('data text 2');
      print(_userdatalist.length);
      _isloading = false;
      notifyListeners();
      //  _selectedAmbulanceindex = null;
    }).catchError((error) {
      _isloading = false;
      notifyListeners();
      return;
    });
  }

  bool get isloading {
    return _isloading;
  }
}
