import 'package:assignment/assignment/question3/model/allNoBetween.dart';
import 'package:assignment/assignment/question3/screen/output_screen.dart';
import 'package:flutter/material.dart';

class Question3 extends StatefulWidget {
  const Question3({super.key});

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  TextEditingController _no1controller = TextEditingController();
  TextEditingController _no2controller = TextEditingController();
  List<int> _allNoBetween = [0];

  void _calculateallNoBetween() {
    int number1 = int.parse(_no1controller.text);
    int number2 = int.parse(_no2controller.text);
    List<int> output =
        List.generate(number2 - number1 + 1, (index) => number1 + index);
    _allNoBetween = output;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 3'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _no1controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _no2controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 20),
                FilledButton(
                  // onPressed: _calculateallNoBetween,
                  onPressed: () {
                    _calculateallNoBetween();
                    List<int> allNoBetween = _allNoBetween;
                    AllNoBeetween all =AllNoBeetween(allNoBetween: _allNoBetween);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OutputScreen(allNoBeetween: all),
                        ));
                  },
                  child: Text('All No. Between'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
