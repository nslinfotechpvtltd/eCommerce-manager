import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:funfy_scanner/Constants/fontsDisplay.dart';
import 'package:funfy_scanner/widgets/widgets.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class TicketScreen extends StatelessWidget {
  // final Barcode? scannedData;

  const TicketScreen({
    Key? key,
    // required this.scannedData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFF5349),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFF5349),
        centerTitle: true,
        title: Text(
          "E -Ticket",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: FontsDisPlay.dmSantsRegular,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(top: 10, left: 30),
              width: screenSize.width,
              height: screenSize.height * 0.7,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/images/expand.png"),
                      SizedBox(width: 10),
                    ],
                  ),
                  Text(
                    "Booking Name",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: FontsDisPlay.dmSantsRegular,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text("Gary F. Adams",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: FontsDisPlay.dmSantsBold,
                        fontSize: 30,
                      )),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/money.png",
                      ),
                      SizedBox(width: 8),
                      Text(
                        "\€ 24.99",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3E332B),
                          fontSize: 17,
                          fontFamily: FontsDisPlay.dmSantsMedium,
                        ),
                      ),
                      SizedBox(width: 8),
                      // Image.asset(
                      //   "assets/images/dot.png",
                      //   color: Color(0xff3E332B),
                      // ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color:Color(0xff3E332B) ,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "2 person(s) ",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff3E332B),
                          fontFamily: FontsDisPlay.dmSantsMedium,
                        ),
                      ),

                      // Text(
                      //   ".",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 40,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 65),
                  Text("Teartlo Barcelo`",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        fontFamily: FontsDisPlay.dmSantsBold,
                      )),
                  SizedBox(height: 8),
                  //Ratting Icons
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                      // return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTicketTile("Order ID", "EBP1267OEC"),
                      buildTicketTile("Check In Type", "Ticket"),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTicketTile("Time", "08.30 PM"),
                      buildTicketTile("Date", "25 June 2021"),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            //circles for decoration
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                width: screenSize.width,
                height: 55,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //circle
                    Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    //dotted Lines
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        width: screenSize.width * 0.78,
                        height: 2,
                        decoration: DottedDecoration(
                          color: Colors.grey,
                          shape: Shape.line,
                        ),
                      ),
                    ),
                    //circle
                    Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),

                    ///
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
