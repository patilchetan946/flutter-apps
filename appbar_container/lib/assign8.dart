import 'package:flutter/material.dart';

class Assign8 extends StatefulWidget {
  const Assign8({super.key});
  @override
  State<Assign8> createState() => _Assign8State();
}

class _Assign8State extends State<Assign8> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT8",
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            child: Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(30),
            ),
          ),
        ),
      ),
    );
  }
}
