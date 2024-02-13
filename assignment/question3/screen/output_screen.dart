import 'package:assignment/assignment/question3/model/allNoBetween.dart';
import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  AllNoBeetween? allNoBeetween;

  OutputScreen({this.allNoBeetween});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
                itemCount: allNoBeetween?.allNoBetween?.length ?? 0,
                itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${allNoBeetween?.allNoBetween?[index]}'),
            ),
          );
                },
              ),
        ));
  }
}
