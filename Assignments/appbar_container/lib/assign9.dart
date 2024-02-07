import 'package:flutter/material.dart';

class Assign9 extends StatefulWidget {
  const Assign9({super.key});
  @override
  State<Assign9> createState() => _Assign9State();
}

class _Assign9State extends State<Assign9> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT9",
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
