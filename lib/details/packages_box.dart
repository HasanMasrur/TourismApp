import 'package:flutter/material.dart';

class Packages_box extends StatelessWidget {
  final String packagename;
  final Color color;
  final String time;
  final String money;
  final Function ontop;
  Packages_box(
      {this.packagename, this.time, this.money, this.ontop, this.color});
  @override
  Widget build(BuildContext context) {
    Color color = this.color;
    return GestureDetector(
      onTap: ontop,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(15))),
        height: 60,
        width: 100,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 08,
                top: 06,
              ),
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                packagename,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 03,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 08,
                  ),
                  alignment: Alignment.topLeft,
                  height: 17,
                  child: Text(
                    time,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 17,
                  child: Text(
                    money,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
