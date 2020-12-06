import 'package:flutter/material.dart';

class User {
  String id;
  String placename;
  String gold;
  String image;
  String silver;
  String discription;
  String platinum;

  User({
    @required this.id,
    @required this.gold,
    @required this.image,
    @required this.placename,
    @required this.discription,
    @required this.platinum,
    @required this.silver,
  });
}
