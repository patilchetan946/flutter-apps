import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget {
  const Assign1({super.key});
  @override
  State<Assign1> createState() => _Assign1State();
}

class _Assign1State extends State<Assign1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Assignment1"),
            backgroundColor: Colors.red,
            actions: const [
              Icon(
                Icons.home_filled,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.comment,
              ),
              SizedBox(
                width: 10,
              )
            ]),
      ),
    );
  }
}
