import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightGreen,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              splashColor: Colors.black12,
              onTap: () {
                setState(() {
                  // if (leftDiceNumber == 6) {
                  //   leftDiceNumber = 1;
                  // } else {
                  //   leftDiceNumber = leftDiceNumber + 1;
                  // }

                  leftDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.black12,
                onTap: () {
                  setState(() {
                    // if (rightDiceNumber == 6) {
                    //   rightDiceNumber = 1;
                    // } else {
                    //   rightDiceNumber = rightDiceNumber + 1;
                    // }
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
