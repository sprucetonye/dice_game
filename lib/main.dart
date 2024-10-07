import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Let's play some Dice Game",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange[700],
          actions: [
            Icon(
              Icons.family_restroom,
              color: Colors.white,
            ),
            SizedBox(
              width: 5.0,
            ),
          ],
        ),
        body: DicePage(),
        backgroundColor: Colors.deepOrange,
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDice() {
    setState(() {
      // ignore: unused_local_variable
      rightDiceNumber = Random().nextInt(5) + 2;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  changeDice();
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          const SizedBox(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              //child: Image.asset("images/dice1.png"),
              child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
