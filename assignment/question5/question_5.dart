import 'dart:math';
import 'package:flutter/material.dart';

class Question5 extends StatefulWidget {
  const Question5({super.key});

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  Color selectedColor = Colors.blueAccent;
  List<Color> colorList = [
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.black,
    Colors.white,
    Colors.purpleAccent
  ];

  void getRandomColor() {
    setState(() {
      var index = Random().nextInt(colorList.length);
      selectedColor = colorList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    getRandomColor();
                  },
                  child: Text('Change Background'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}