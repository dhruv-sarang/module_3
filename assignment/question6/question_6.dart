import 'package:flutter/material.dart';

class Question6 extends StatefulWidget {
  const Question6({super.key});

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  double fontSize = 18;

  void increment() {
    setState(() {
      fontSize += 3;
    });
  }

  void decrement() {
    setState(() {
      fontSize -= 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 6'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Hello..',
              style: TextStyle(fontSize: fontSize),
            ),
            SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                  ),
                  onPressed: () {
                    decrement();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                  ),
                  onPressed: () {
                    increment();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
