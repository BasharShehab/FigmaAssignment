import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                          "https://r1.ilikewallpaper.net/iphone-x-wallpapers/download/76178/Paris-France-iphone-x-wallpaper-ilikewallpaper_com.jpg"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            IconButton(
                              alignment: Alignment.topLeft,
                              color: Colors.white,
                              padding: EdgeInsets.only(top: 50.0, left: 20.0),
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {},
                            ),
                          ],
                        ), //empty, dont know where to go back to
                        SizedBox(
                          height: 50,
                        ), //spacing
                        Row(
                          //row just to align container to the right
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16.0),
                              alignment: Alignment.topCenter,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "David Gohn Condos",
                                    style: TextStyle(
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Opensans"),
                                  ),
                                  Text(
                                    "16 David Gohn Circle - Richmond Hill - ON L2L 2L2",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Opensans"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 430,
                        ), //spacing
                        FlatButton(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          color: Colors.blue,
                          textColor: Colors.white,
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Select a unit",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Opensans",
                                fontWeight: FontWeight.w600),
                          ),
                        ),

                        SizedBox(
                          height: 50,
                        ),
                        FlatButton(
                          textColor: Colors.white,
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                "More",
                                style: TextStyle(
                                    fontFamily: "Opensans",
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.expand_more,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 1125,
                height: 2436,
              )
            ],
          ),
        ),
      ),
    );
  }
}
