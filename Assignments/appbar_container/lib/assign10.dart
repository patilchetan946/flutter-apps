import 'package:flutter/material.dart';

class Assign10 extends StatefulWidget {
  const Assign10({super.key});
  @override
  State<Assign10> createState() => _Assign10State();
}

class _Assign10State extends State<Assign10> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT10",
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.red,
            ),
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
