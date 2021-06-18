import 'package:flutter/material.dart';
import 'package:rjstudio_assignment/screens/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}
