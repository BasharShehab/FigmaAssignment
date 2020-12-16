import 'package:flutter/material.dart';

class BulletPoint extends StatefulWidget {
  final text, color, fontFamily, weight;
  final double height, size;
  const BulletPoint(
      {Key key,
      this.text,
      this.size,
      this.fontFamily,
      this.weight,
      this.color,
      this.height})
      : super(key: key);
  @override
  _BulletPointState createState() => _BulletPointState();
}

class _BulletPointState extends State<BulletPoint> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "\u2022",
            style: TextStyle(
              color: widget.color ?? Colors.black,
              fontFamily: widget.fontFamily ?? "Opensans",
              height: widget.height * 0.9 ?? 1.0,
              fontSize: widget.size * 1.3 ?? 24,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            widget.text ?? "DEFAULT BULLET TEXT",
            style: TextStyle(
              color: widget.color ?? Colors.black,
              fontFamily: widget.fontFamily ?? "Opensans",
              height: widget.height ?? 1.0,
              fontSize: widget.size ?? 24,
            ),
          ),
        ],
      ),
    );
  }
}
