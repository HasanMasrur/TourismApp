import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationsBox extends StatelessWidget {
  final String countryname;
  final String placename;
  final ImageProvider image;

  DestinationsBox({this.countryname, this.placename, this.image});

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
                image: DecorationImage(image: image, fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 15,
                  alignment: Alignment.topLeft,
                  child: Text(placename),
                ),
                SizedBox(
                  height: 05,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 15,
                  child: Text(countryname),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //  margin: EdgeInsets.only(left: 20),
                    child: RatingBar(
                      initialRating: 03,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 10,
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
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
