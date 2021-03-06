import 'dart:convert';
import 'package:TourismApp/model/model.dart';

import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
import 'model.dart';

class Modeldata extends Model {
  List<Userss> _userdatalist = [];
  bool _isloading = false;

  List<Userss> get userdatalist {
    return _userdatalist;
  }

  Future<bool> fatchprofiledata() async {
    _isloading = true;

    return await http
        .get(
            "https://tourismapps-d5a64-default-rtdb.firebaseio.com/datalist.json")
        .then((http.Response response) {
      print(response.body);
      List<Userss> _profilepagelist = [];
      notifyListeners();
      Map<String, dynamic> fatchdata = json.decode(response.body);
      if (fatchdata == null) {
        _isloading = false;
        notifyListeners();
        return;
      }

      fatchdata.forEach((String profileid, dynamic datalist) {
        print('check datalis');

        final Userss _profile = Userss(
            id: profileid,
            placename: datalist['placename'],
            image: datalist['image'],
            gold: datalist['gold'],
            silver: datalist['silver'],
            paltinum: datalist['paltinum'],
            discription: datalist['discription']);
        print(_profile.paltinum);
        _profilepagelist.add(_profile);
      });

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
