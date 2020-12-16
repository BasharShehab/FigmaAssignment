import 'package:expandable_text/expandable_text.dart';
import 'package:figma_app/Blocks/Amenities.dart';
import 'package:figma_app/Builders/CarouselImageSlider.dart';
import 'package:figma_app/Builders/TextBlock.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextBlock(
            alignment: Alignment.topLeft,
            padd: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
            fontFamily: "Lato",
            fontSize: 45,
            fontWeight: FontWeight.w400,
            margin: EdgeInsets.only(right: 90),
            text: "The best way to live in downtown.",
            height: 1.2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0, right: 36, bottom: 36),
            child: ExpandableText(
              "David Gohn Condos is a modern development of meticulosly crafted apartments, seamlessly stitched into the heart of Richmond Hill. With a placeholding textplaceholding textplaceholding text",
              collapseText: "\nRead Less",
              expandText: "\nRead More",
              linkColor: Color.fromARGB(255, 20, 132, 214),
              linkEllipsis: false,
              maxLines: 3,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  height: 2.0,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400),
            ),
          ),
          // TextBlock(
          //   alignment: Alignment.center,
          //   padd: EdgeInsets.only(left: 40, right: 40, bottom: 32),
          //   fontFamily: "Lato",
          //   fontSize: 18,
          //   fontWeight: FontWeight.w400,
          //   text:
          //       "David Gohn Condos is a modern development of meticulosly crafted apartments, seamlessly stitched into the heart of Richmond Hill. With a ... placeholding textplaceholding textplaceholding text",
          //   height: 2,
          //   color: Color.fromARGB(255, 41, 41, 41),
          // ),
          CarouselBuilder(
            list: [
              'assets/backgroundCondo.png',
              'assets/Carousel_1.png',
              'assets/Carousel_1.png',
            ],
          ),
          Amenities(),
        ],
      ),
    );
  }
}
