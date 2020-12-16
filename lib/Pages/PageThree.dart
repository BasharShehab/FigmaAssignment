import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_app/Builders/Reviews.dart';
import 'package:flutter/material.dart';

import '../Builders/ButtonBuilder.dart';
import '../Builders/TextBlock.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextBlock(
              alignment: Alignment.center,
              padd: EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 40),
              fontFamily: "Lato",
              fontSize: 28,
              fontWeight: FontWeight.w700,
              text: "Management Reviews",
              height: 2,
              color: Color.fromARGB(255, 41, 41, 41),
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int itemIndex) => Container(
                child: Review(
                  reviewName: "Sara Peterson",
                  reviewPicture: "assets/reviewIcon.png",
                  reviewText:
                      "Super modern condo. I lived there for about 3 years, the company that runs the building is very professional. I once had a problem with my washer and they send a person to check it out right away",
                ),
              ),
              options: CarouselOptions(initialPage: 0, height: 200),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage("assets/youngWoman.png"),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: 60, right: 60),
              child: ButtonBuiler(
                padd: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                textColor: Colors.white,
                color: Colors.blue,
                cornerRadius: 5,
                fontFamily: "Opensans",
                text: "Write a Management Review",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60, right: 60, top: 20),
              child: ButtonBuiler(
                padd: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                textColor: Colors.black,
                color: Colors.white,
                cornerRadius: 5,
                fontFamily: "Opensans",
                text: "Read More Reviews",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                borderStyle: BorderStyle.solid,
                borderWidth: 1,
                borderColor: Color.fromARGB(255, 209, 209, 209),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
