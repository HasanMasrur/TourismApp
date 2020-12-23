import 'package:TourismApp/details/packages_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  final data;
  DetailsPage(this.data);
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

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 1,
              right: 1,
              child: Container(
                height: 230,
                margin: EdgeInsets.only(
                  top: 25,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5DC),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://m.hindustantimes.com/rf/image_size_1200x900/HT/p2/2020/06/09/Pictures/darjeeling-beautiful-kangchenjunga-himalayan-landscape-background-kanchenjunga_9ee206bc-aa61-11ea-9c49-07241376e8f9.jpg")),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 230,
                ),
                Container(
                  // margin: EdgeInsets.only(top: 250),
                  height: 553,
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
                          widget.data.placename,
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
                          widget.data.discription,
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
                            money: widget.data.silver.toString(),
                            packagename: "silver",
                            color: col1,
                            ontop: () {
                              setState(() {
                                col1 = Colors.green;
                                col2 = Colors.white;
                                col3 = Colors.white;
                                print('text1');
                              });
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Packages_box(
                            time: "5 day",
                            money: widget.data.gold.toString(),
                            packagename: "Gold",
                            color: col2,
                            ontop: () {
                              setState(() {
                                col2 = Colors.green;
                                col1 = Colors.white;
                                col3 = Colors.white;
                                print('text2');
                              });
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Packages_box(
                            time: "7 day",
                            money: widget.data.paltinum,
                            packagename: "Platinum",
                            color: col3,
                            ontop: () {
                              setState(() {
                                col3 = Colors.green;
                                col2 = Colors.white;
                                col1 = Colors.white;
                                print('text3');
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
                            "Book Now",
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
              top: 210,
              left: 320,
            ),
          ],
        ),
      ),
    );
  }
}
