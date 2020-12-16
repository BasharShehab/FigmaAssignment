import 'package:flutter/material.dart';

import '../Builders/BulletPoint.dart';
import '../Builders/TextBlock.dart';

class Amenities extends StatelessWidget {
  const Amenities({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextBlock(
            text: "Amenities",
            fontSize: 24,
            alignment: Alignment.center,
            color: Colors.black,
            fontFamily: "Lato",
            fontWeight: FontWeight.w700,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Sophisticated Finishes",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "24/7 Concierge",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "High Speed Elevators",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "5th Floor Gym",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Party Room",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                ],
              ),
              SizedBox(
                width: 27,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Guest Suites",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Rooftop",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Barbeque Area",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Sauna",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  BulletPoint(
                    color: Color.fromARGB(255, 105, 105, 105),
                    text: "Swimming Pool",
                    size: 16,
                    weight: FontWeight.w400,
                    fontFamily: "Lato",
                    height: 2,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
