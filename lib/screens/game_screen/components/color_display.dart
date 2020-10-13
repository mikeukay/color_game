import 'package:flutter/material.dart';

class ColorDisplay extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color centerColor;
  final Function(bool) onColorPressed;

  const ColorDisplay({Key key,
    @required this.color1,
    @required this.color2,
    @required this.centerColor,
    @required this.onColorPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double padding = 10.0;

    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          child: GestureDetector(
            child: Container(
              color: color1,
              width: screenWidth / 2 - padding / 2,
            ),
            onTap: () => onColorPressed(color1 == centerColor),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: GestureDetector(
            child: Container(
              color: color2,
              width: screenWidth / 2 - padding / 2,
            ),
            onTap: () => onColorPressed(color2 == centerColor),
          ),
        ),
        Center(
          child: Container(
            width: 128.0 + padding * 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: centerColor,
              border: Border.all(
                color: Colors.white,
                width: padding,
              ),
            ),
          ),
        ),
      ],
    );
  }
}