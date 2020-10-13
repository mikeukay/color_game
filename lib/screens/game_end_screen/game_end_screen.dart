import 'package:color_game/screens/game_screen/game_screen.dart';
import 'package:flutter/material.dart';

class GameEndScreen extends StatelessWidget {
  final int score;

  const GameEndScreen({Key key,
    @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Game ended!',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 32.0),
            Text(
              'Your score was:',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              score.toString(),
              style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 32.0,
                  icon: Icon(
                    Icons.refresh,
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => GameScreen())
                    );
                  },
                ),
                const SizedBox(width: 24.0),
                IconButton(
                  iconSize: 32.0,
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  color: Colors.grey[600],
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//class GameEndScreen extends StatelessWidget {
//
//  final int score;
//
//  const GameEndScreen({Key key,
//    @required this.score}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Text(
//                'Game ended!',
//                style: Theme.of(context).textTheme.headline4,
//              ),
//              const SizedBox(height: 32.0),
//              Text(
//                'Your score was: ',
//                style: Theme.of(context).textTheme.subtitle1,
//              ),
//              Text(
//                score.toString(),
//                style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.black),
//              ),
//              const SizedBox(height: 16.0),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  IconButton(
//                      iconSize: 32.0,
//                      icon: Icon(
//                        Icons.refresh,
//                      ),
//                      color: Colors.red,
//                      onPressed: () {
//                        Navigator.of(context).pushReplacement(
//                          MaterialPageRoute(builder: (context) => GameScreen()),
//                        );
//                      }
//                  ),
//                  const SizedBox(width: 24.0),
//                  IconButton(
//                      iconSize: 32.0,
//                      icon: Icon(
//                        Icons.home_outlined,
//                      ),
//                      color: Colors.grey[600],
//                      onPressed: () {
//                        Navigator.of(context).pop();
//                      }
//                  ),
//                ],
//              ),
//            ],
//          ),
//      ),
//    );
//  }
//}
