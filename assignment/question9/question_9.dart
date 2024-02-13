import 'package:flutter/material.dart';

class Question9 extends StatefulWidget {
  const Question9({super.key});

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  Color _selectedColor = Colors.black;

  void _handleColorChange(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColor,
      body: Container(
        // color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.red, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Purple',
                    style: TextStyle(color: Colors.purple, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.purple,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.blue, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.green, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'White',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.white,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Orange',
                    style: TextStyle(color: Colors.orange, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.orange,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Yellow',
                    style: TextStyle(color: Colors.yellow, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.yellow,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Pink',
                    style: TextStyle(color: Colors.pink, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.pink,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
            RadioListTile(
              title: Card(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    'Cyan',
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 22),
                  ),
                ),
              ),
              value: Colors.cyan,
              groupValue: _selectedColor,
              onChanged: (value) {
                setState(() {
                  _handleColorChange(value!);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
