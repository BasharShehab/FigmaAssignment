import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExpandableText extends StatefulWidget {
  final alignment, padd, margin, fontFamily, fontWeight, color;
  final double fontSize, height;
  const ExpandableText(
    this.text, {
    Key key,
    this.trimLines = 2,
    this.alignment,
    this.padd,
    this.margin,
    this.fontFamily,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.height,
  })  : assert(text != null),
        super(key: key);

  final String text;
  final int trimLines;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;
  void _onTapLink() {
    setState(() => _readMore = !_readMore);
  }

  @override
  Widget build(BuildContext context) {
    final colorClickableText = Colors.blue;
    final widgetColor = Colors.black;
    TextSpan link = TextSpan(
        text: _readMore ? "...\nRead more" : " read less",
        style: TextStyle(
          color: colorClickableText,
        ),
        recognizer: TapGestureRecognizer()..onTap = _onTapLink);

    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;
        // Create a TextSpan with data
        final text = TextSpan(
          text: widget.text,
        );
        // Layout and measure link
        TextPainter textPainter = TextPainter(
          text: link,
          textDirection: TextDirection.rtl,
          maxLines: widget.trimLines,
          ellipsis: '...',
          textAlign: TextAlign.center,
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;
        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;
        // Get the endIndex of data
        int endIndex;
        final pos = textPainter.getPositionForOffset(Offset(
          textSize.width - linkSize.width,
          textSize.height,
        ));
        endIndex = textPainter.getOffsetBefore(pos.offset);
        var textSpan;
        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text: _readMore ? widget.text.substring(0, endIndex) : widget.text,
            style: TextStyle(
              color: widgetColor,
            ),
            children: <TextSpan>[link],
          );
        } else {
          textSpan = TextSpan(
            text: widget.text,
          );
        }
        return Container(
          padding: widget.padd ?? EdgeInsets.all(16),
          margin: widget.margin ?? EdgeInsets.all(0),
          alignment: widget.alignment ?? Alignment.topLeft,
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.clip,
            text: textSpan,
          ),
        );
      },
    );
    return Container(
        padding: widget.padd ?? EdgeInsets.all(16),
        margin: widget.margin ?? EdgeInsets.all(0),
        alignment: widget.alignment ?? Alignment.topLeft,
        child: result);
  }
}
