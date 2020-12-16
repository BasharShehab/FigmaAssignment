import 'package:flutter/material.dart';

class DavidBlock extends StatelessWidget {
  const DavidBlock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20, top: 15),
      alignment: Alignment.topRight,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Colors.white.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "David Gohn Condos",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
          ),
          Text(
            "16 David Gohn Circle - Richmond Hill - ON L2L 2L2",
            style: TextStyle(
                fontSize: 15.6,
                height: 1.4,
                fontWeight: FontWeight.w700,
                fontFamily: "Lato"),
          ),
        ],
      ),
    );
  }
}
