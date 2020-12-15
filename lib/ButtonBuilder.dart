import 'package:flutter/material.dart';

class ButtonBuiler extends StatefulWidget {
  final padd,
      color,
      textColor,
      text,
      fontFamily,
      fontWeight,
      borderStyle,
      borderColor;
  final double cornerRadius, fontSize, height, borderWidth;

  const ButtonBuiler(
      {Key key,
      this.padd,
      this.color,
      this.textColor,
      this.height,
      this.cornerRadius,
      this.text,
      this.fontSize,
      this.fontFamily,
      this.fontWeight,
      this.borderStyle,
      this.borderColor,
      this.borderWidth})
      : super(key: key);
  @override
  _ButtonBuilerState createState() => _ButtonBuilerState();
}

class _ButtonBuilerState extends State<ButtonBuiler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: widget.borderColor ?? Colors.transparent,
            style: widget.borderStyle ?? BorderStyle.none,
            width: widget.borderWidth ?? 0.0),
      ),
      child: FlatButton(
        padding: widget.padd ?? EdgeInsets.only(left: 50, right: 50),
        color: widget.color ?? Colors.blue,
        textColor: widget.textColor ?? Colors.white,
        height: widget.height ?? 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.cornerRadius ?? 5),
        ),
        onPressed: () {},
        child: Text(
          widget.text ?? "Select a unit",
          style: TextStyle(
              fontSize: widget.fontSize ?? 24,
              fontFamily: widget.fontFamily ?? "Opensans",
              fontWeight: widget.fontWeight ?? FontWeight.w600),
        ),
      ),
    );
  }
}
