import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  final int totalTime;
  final int timeLeft;

  const TimeDisplay({Key key,
    @required this.totalTime,
    @required this.timeLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double p = (timeLeft - 1) / (totalTime - 1);

    return Center(
      child: AnimatedContainer(
        height: 10.0,
        duration: const Duration(seconds: 1),
        width: screenWidth * p,
        color: Color.lerp(Colors.red, Colors.green, p),
      ),
    );
  }
}