import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
 runApp(MaterialApp(
  home: Scaffold(
    body: MyApp(),
  ),
 ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var CurrentDiceState=4;

  void diceChanger(){
    setState(() {
      CurrentDiceState=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('ASSETS/images/dice-$CurrentDiceState.png'),
          SizedBox(height: 20,),
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black
          ),
            onPressed: diceChanger, child: Text('DiceRoller'))
        ],
      ),
    );
  }
}

