import 'package:figma_app/Builders/TextBlock.dart';
import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  final reviewText, reviewName, reviewPicture;

  const Review({Key key, this.reviewText, this.reviewName, this.reviewPicture})
      : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 209, 209, 209),
          style: BorderStyle.solid,
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBlock(
            padd: EdgeInsets.all(16),
            alignment: Alignment.center,
            color: Colors.black,
            fontFamily: "Lato",
            fontSize: 14,
            height: 1.44,
            text: widget.reviewText ?? "REVIEW TEXT",
            fontWeight: FontWeight.w400,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 14,
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage(widget.reviewPicture ?? Icons.error_outline),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextBlock(
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 59, 59, 59),
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900,
                    padd: EdgeInsets.all(0.0),
                    fontSize: 15,
                    height: 1,
                    text: widget.reviewName ?? "REVIEWER NAME",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              TextBlock(
                color: Color.fromARGB(255, 105, 105, 105),
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                text: "Nov 02",
                alignment: Alignment.bottomRight,
              )
            ],
          ),
        ],
      ),
    );
  }
}
