import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  var top = 1;
  var down = 3;
  var poinOfPlayerOne = 0;
  var poinOfPlayerTwo = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nexa-Heavy'),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(188, 246, 232, 1),
        appBar: AppBar(
          title: Text('Rock Paper Scissor'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(12, 153, 120, 1),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Player One',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '$poinOfPlayerOne',
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Image(
                      image: AssetImage('images/$down.png'),
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  if (top == 1 && down == 2) {
                    poinOfPlayerOne = poinOfPlayerOne + 1;
                  } else if (top == 1 && down == 1) {
                    poinOfPlayerOne = poinOfPlayerOne + 0;
                  } else if (top == 1 && down == 3) {
                    poinOfPlayerTwo = poinOfPlayerTwo + 1;
                  }
                  if (top == 2 && down == 1) {
                    poinOfPlayerTwo = poinOfPlayerTwo + 1;
                  } else if (top == 2 && down == 2) {
                    poinOfPlayerOne = poinOfPlayerOne + 0;
                  } else if (top == 2 && down == 3) {
                    poinOfPlayerOne = poinOfPlayerOne + 1;
                  }
                  if (top == 3 && down == 1) {
                    poinOfPlayerOne = poinOfPlayerOne + 1;
                  } else if (top == 3 && down == 3) {
                    poinOfPlayerOne = poinOfPlayerOne + 0;
                  } else if (top == 3 && down == 2) {
                    poinOfPlayerTwo = poinOfPlayerTwo + 1;
                  }
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    down = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'Start Game',
                  style: TextStyle(fontSize: 18, color: Colors.pink),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Player Two',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '$poinOfPlayerTwo',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Image(
                      image: AssetImage('images/$top.png'),
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              )
            ],

            //     ],
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         height: 20,
            //       ),

            //     ],
            //   )
            // ],
          ),
        ),
      ),
    );
  }
}
