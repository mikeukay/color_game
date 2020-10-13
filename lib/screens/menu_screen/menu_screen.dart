import 'package:color_game/screens/game_screen/game_screen.dart';
import 'package:flutter/material.dart';
import 'components/custom_button.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Color Game',
              style: const TextStyle(
                fontSize: 32.0,
              ),
            ),
            const SizedBox(height: 16.0),
            CustomButton(
                text: 'Play',
                onPressed: () {
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GameScreen())
                   );
                }
            ),
          ],
        ),
      ),
    );
  }
}
