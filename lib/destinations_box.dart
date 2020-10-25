import 'package:flutter/material.dart';

class DestinationsBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DestinationsBox();
  }
}

class _DestinationsBox extends State<DestinationsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('assets/darjeeling.jpg'),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 15,
                  alignment: Alignment.topLeft,
                  child: Text('Derjeeling'),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text('Derjeeling'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
