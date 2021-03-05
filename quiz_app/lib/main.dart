// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Bad Governance Quiz App.',
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        ),
        body: Questions(),
      ),
    );
  }
}
