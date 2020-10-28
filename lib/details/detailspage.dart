import 'package:TourismApp/details/packages_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailsPage();
  }
}

class _DetailsPage extends State<DetailsPage> {
  Color col1 = Colors.white;
  Color col2 = Colors.white;
  Color col3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('hasan'),
      // ),

      backgroundColor: Colors.amber,

      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 250,
              ),
              Container(
                // margin: EdgeInsets.only(top: 250),
                height: 433,
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5DC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 25),
                      alignment: Alignment.topLeft,
                      height: 25,
                      child: Text(
                        'Derjeeling',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      alignment: Alignment.topLeft,
                      height: 18,
                      child: Text(
                        'India',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      alignment: Alignment.topLeft,
                      height: 88,
                      child: Text(
                        'Darjeeling is a town in India s West Bengal state, in the Himalayan foothills. Once a summer resort for the British Raj elite, it remains the terminus of the narrow-gauge Darjeeling Himalayan Railway, or “Toy Train,” completed in 1881. It s famed for the distinctive black tea grown on plantations that dot its surrounding slopes. Its backdrop is Mt. Kanchenjunga, among the world’s highest peak',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 25),
                        alignment: Alignment.topLeft,
                        //  margin: EdgeInsets.only(left: 20),
                        child: RatingBar(
                          initialRating: 03,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) {
                            return Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.amber,
                            );
                          },
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(left: 25),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Packages",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      height: 50,
                      child: Row(children: [
                        Packages_box(
                          time: "3 day",
                          money: "10000k",
                          packagename: "silver",
                          color: col1,
                          ontop: () {
                            setState(() {
                              col1 = Colors.green;
                              col2 = Colors.white;
                              col3 = Colors.white;
                            });
                          },
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Packages_box(
                          time: "5 day",
                          money: "15000k",
                          packagename: "Gold",
                          color: col2,
                          ontop: () {
                            setState(() {
                              col2 = Colors.green;
                              col1 = Colors.white;
                              col3 = Colors.white;
                            });
                          },
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Packages_box(
                          time: "7 day",
                          money: "20000k",
                          packagename: "Platinum",
                          color: col3,
                          ontop: () {
                            setState(() {
                              col3 = Colors.green;
                              col2 = Colors.white;
                              col1 = Colors.white;
                            });
                          },
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        height: 35,
                        width: 350,
                        alignment: Alignment.center,
                        child: Text(
                          "Bock Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 20,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            top: 230,
            left: 340,
          ),
        ],
      ),
    );
  }
}
