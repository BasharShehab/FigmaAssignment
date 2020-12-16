import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBuilder extends StatefulWidget {
  final List list;
  final double height;
  final bool autoPlay, infiniteScroll, viewportFraction;
  final int autoPlayIntervalDurationSeconds, autoPlayAnimationDurationSeconds;
  final Axis scrollDirectionAxis;

  CarouselBuilder(
      {Key key,
      this.list,
      this.height,
      this.autoPlay,
      this.infiniteScroll,
      this.viewportFraction,
      this.autoPlayIntervalDurationSeconds,
      this.autoPlayAnimationDurationSeconds,
      this.scrollDirectionAxis})
      : super(key: key);

  @override
  _CarouselBuilderState createState() => _CarouselBuilderState();
}

class _CarouselBuilderState extends State<CarouselBuilder> {
  int _current = 0;
  List imgList = ["NO LIST PASSED THROUGH"];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 3,
              autoPlay: true,
              initialPage: 0,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 200),
              scrollDirection: Axis.horizontal,
              viewportFraction: 1.0,
              onPageChanged: (i, e) {
                setState(() {
                  _current = i;
                });
              }),
          items: (widget.list ?? imgList).map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(0.3)),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: map<Widget>((widget.list ?? imgList), (index, url) {
            return Container(
              width: 10.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: 3.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.orange : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
