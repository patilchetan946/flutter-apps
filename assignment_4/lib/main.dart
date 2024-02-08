import 'package:flutter/material.dart';
import 'package:assignment_1/assignment4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: assignment4(),
    );
  }
}
