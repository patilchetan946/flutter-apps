import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});
  @override
  State<Assign3> createState() => _Assign3State();
}

class _Assign3State extends State<Assign3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Hello Core2Web",
          ),
        ),
        body: Center(
            child: Container(
          color: Colors.blue,
          width: 360,
          height: 200,
        )),
      ),
    );
  }
}
