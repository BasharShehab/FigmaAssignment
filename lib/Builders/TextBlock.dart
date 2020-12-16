import 'package:flutter/material.dart';

class TextBlock extends StatefulWidget {
  final alignment, padd, margin, fontFamily, text, fontWeight, color;
  final double fontSize, height;
  const TextBlock(
      {Key key,
      this.alignment,
      this.padd,
      this.margin,
      this.fontSize,
      this.fontFamily,
      this.text,
      this.fontWeight,
      this.height,
      this.color})
      : super(key: key);
  @override
  _TextBlockState createState() => _TextBlockState();
}

class _TextBlockState extends State<TextBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padd ?? EdgeInsets.all(16),
      margin: widget.margin ?? EdgeInsets.all(0),
      alignment: widget.alignment ?? Alignment.topLeft,
      child: Text(
        widget.text ?? "yo, you forgot the text",
        style: TextStyle(
            color: widget.color ?? Colors.black,
            height: widget.height ?? 2.0,
            fontSize: widget.fontSize ?? 60,
            fontFamily: widget.fontFamily ?? "Lato",
            fontWeight: widget.fontWeight ?? FontWeight.w400),
      ),
    );
  }
}
