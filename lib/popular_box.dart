import 'package:TourismApp/details/detailspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularBox extends StatelessWidget {
  final String placename;
  final ImageProvider image;
  PopularBox({
    this.placename,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        return Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsPage();
        }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20),
                  height: 160,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Center(
                //     child: Image.asset(
                //   'assets/darjeeling.jpg',
                //   height: size.height,
                //   width: size.width,
                //   fit: BoxFit.fill,
                // )),
                Positioned(
                    left: 220,
                    top: 140,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child: Icon(
                        Icons.add_circle,
                        size: 30,
                      ),
                    )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  placename,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: RatingBar(
                    initialRating: 03,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
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
          )
        ],
      ),
    );
  }
}
