import 'package:flutter/material.dart';

class User {
  String id;
  String placename;
  String gold;
  String silver;
  String discription;
  String platinum;

  User({
    @required this.id,
    @required this.gold,
    @required this.placename,
    @required this.discription,
    @required this.platinum,
    @required this.silver,
  });
}
