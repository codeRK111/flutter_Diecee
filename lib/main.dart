import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 3;
  int rightDiceNumaber = 5;

  void changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      rightDiceNumaber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image.asset("images/dice$diceNumber.png"),
                onPressed: changeDice),
          ),
          Expanded(
              child: FlatButton(
            onPressed: changeDice,
            child: Image.asset("images/dice$rightDiceNumaber.png"),
          )),
        ],
      ),
    );
  }
}
