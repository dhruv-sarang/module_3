import 'package:flutter/material.dart';

class Question4 extends StatefulWidget {
  const Question4({super.key});

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  TextEditingController _no1controller = TextEditingController();
  TextEditingController _no2controller = TextEditingController();
  int selectedOption = 1;
  String output = '';

  void calculateResult() {
    double num1 = double.parse(_no1controller.text);
    double num2 = double.parse(_no2controller.text);

    setState(() {
      switch (selectedOption) {
        case 1:
          output = (num1 + num2).toString();
          break;
        case 2:
          output = (num1 - num2).toString();
          break;
        case 3:
          output = (num1 * num2).toString();
          break;
        case 4:
          output = (num1 / num2).toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 4'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: const Text('Addition'),
                leading: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      calculateResult();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Subtraction'),
                leading: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      calculateResult();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Multiplication'),
                leading: Radio(
                  value: 3,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      calculateResult();
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Division'),
                leading: Radio(
                  value: 4,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      calculateResult();
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              TextField(
                onChanged: (value) => calculateResult(),
                controller: _no1controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => calculateResult(),
                controller: _no2controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Output : $output',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
