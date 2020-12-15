import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma_app/ButtonBuilder.dart';
import 'package:figma_app/CarouselImageSlider.dart';
import 'package:figma_app/DavidBlock.dart';
import 'package:figma_app/Reviews.dart';
import 'package:figma_app/TextBlock.dart';
import 'package:flutter/material.dart';
import 'Amenities.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _visible = true;
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          child: Container(
            color: Color.fromARGB(255, 229, 229, 229),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: <Widget>[
                    Image(
                      width: screenWidth,
                      height: screenHeight,
                      image: AssetImage("assets/backgroundCondo.png"),
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          //align back arrow to the top left
                          children: [
                            IconButton(
                              alignment: Alignment.topLeft,
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 50.0, left: 20.0),
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ), //spacing
                        Row(
                          //row just to align container to the right
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DavidBlock(),
                          ],
                        ),
                        SizedBox(
                          height: 430,
                        ), //spacing
                        ButtonBuiler(
                          //flatButtonBuilder , see ButtonBuilder.dart
                          padd: EdgeInsets.only(left: 50.0, right: 50.0),
                          color: Colors.blue,
                          textColor: Colors.white,
                          height: 50.0,
                          cornerRadius: 5.0,
                          fontFamily: "Opensans",
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          text: "Select a unit",
                        ),
                        SizedBox(
                          height: 50,
                        ), //spacing
                        AnimatedOpacity(
                          //animating MORE button
                          duration: Duration(milliseconds: 200),
                          opacity: _visible ? 1.0 : 0.0,
                          child: FlatButton(
                            textColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                _visible = false;
                              });
                              print(_visible);

                              _controller.animateTo(screenHeight,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeOut);
                            },
                            child: Column(
                              children: [
                                Text(
                                  "More",
                                  style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(
                                  Icons.expand_more,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextBlock(
                        alignment: Alignment.topLeft,
                        padd: EdgeInsets.only(
                            top: 24, left: 16, right: 16, bottom: 16),
                        fontFamily: "Lato",
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        margin: EdgeInsets.only(right: 90),
                        text: "The best way to live in downtown.",
                        height: 1.2,
                      ),
                      TextBlock(
                        alignment: Alignment.center,
                        padd: EdgeInsets.only(left: 40, right: 40, bottom: 32),
                        fontFamily: "Lato",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        text:
                            "David Gohn Condos is a modern development of meticulosly crafted apartments, seamlessly stitched into the heart of Richmond Hill. With a ...",
                        height: 2,
                        color: Color.fromARGB(255, 41, 41, 41),
                      ),
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
                ),
                Container(
                  height: screenHeight,
                  width: screenWidth,
                  padding: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextBlock(
                        alignment: Alignment.center,
                        padd: EdgeInsets.only(left: 40, right: 40, bottom: 32),
                        fontFamily: "Lato",
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        text: "Management Reviews",
                        height: 2,
                        color: Color.fromARGB(255, 41, 41, 41),
                      ),
                      CarouselSlider.builder(
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int itemIndex) =>
                            Container(
                          child: Review(
                            reviewName: "Sara Peterson",
                            reviewPicture: "assets/reviewIcon.png",
                            reviewText:
                                "Super modern condo. I lived there for about 3 years, the company that runs the building is very professional. I once had a problem with my washer and they send a person to check it out right away",
                          ),
                        ),
                        options: CarouselOptions(initialPage: 0, height: 165),
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
                          padd: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
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
                          padd: EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _visible = true;
    _controller.addListener(_scrollListener);
  }

  _scrollListener() {
    if ((_controller.offset >= _controller.position.maxScrollExtent &&
            !_controller.position.outOfRange) ||
        _controller.offset <=
            _controller.position.maxScrollExtent -
                (MediaQuery.of(context).size.height)) {
      setState(() {
        _visible = false;
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _visible = true;
      });
    }
  }
}
