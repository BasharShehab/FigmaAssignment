import 'dart:ui';

import 'package:figma_app/Pages/PageTwo.dart';
import 'package:flutter/material.dart';
import 'Blocks/DavidBlock.dart';
import 'Builders/ButtonBuilder.dart';
import 'Pages/PageThree.dart';

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
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        child: Container(
          color: Color.fromARGB(255, 229, 229,
              229), //Color is not looking good, but that's #E5E5E5 in rgba taken from your design, so i'm sticking to it.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/backgroundCondo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        IconButton(
                          alignment: Alignment.topLeft,
                          color: Colors.white,
                          padding: EdgeInsets.only(top: 50.0, left: 20.0),
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DavidBlock(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 00,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                    ),
                  ],
                ),
              ),
              PageTwo(),
              PageThree()
            ],
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
