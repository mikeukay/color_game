import 'dart:async';

import 'package:color_game/screens/game_end_screen/game_end_screen.dart';
import 'package:color_game/screens/game_screen/components/color_display.dart';
import 'package:color_game/screens/game_screen/components/time_display.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class GameScreen extends StatefulWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Timer _timer;
  int secondsLeft;
  int score;
  Color color1, color2, centerColor;

  void initializeGame() {
    secondsLeft = 15;
    score = 0;
    chooseNewColors();
    _timer = Timer.periodic(
        const Duration(seconds: 1),
        (timer) => tick()
    );
  }

  void endGame() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => GameEndScreen(score: score))
    );
  }

  void tick() {
    setState(() {
      if(secondsLeft == 1) {
        _timer.cancel();
        endGame();
      } else {
        secondsLeft = secondsLeft - 1;
      }
    });
  }

  void chooseNewColors() {
    color1 = widget._randomColor.randomColor();
    do {
      color2 = widget._randomColor.randomColor();
    } while(color1.value == color2.value);
    centerColor = ([color1, color2]..shuffle()).first;
  }

  void clickedColor(bool rightColor) {
    setState(() {
      if(rightColor) {
        score += 1;
      } else {
        score -= 1;
      }

      chooseNewColors();
    });
  }

  @override
  void initState() {
    initializeGame();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TimeDisplay(
                totalTime: 15,
                timeLeft: secondsLeft
            ),
            Expanded(
              child: ColorDisplay(
                color1: color1,
                color2: color2,
                centerColor: centerColor,
                onColorPressed: clickedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}