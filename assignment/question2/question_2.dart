import 'package:flutter/material.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  TextEditingController _controller = TextEditingController();
  String _reverseNumber = '';

  void _calculateReverse() {
    String input = _controller.text;
    String reverse = input.split('').reversed.join();
    setState(() {
      _reverseNumber = reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 2'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) => _calculateReverse(),
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height: 20),
              /*FilledButton(
                onPressed: _calculateReverse,
                child: Text('Calculate Reverse'),
              ),*/
              SizedBox(height: 20),
              Text(
                'Reverse Number: $_reverseNumber',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
