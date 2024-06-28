import 'package:flutter/material.dart';

class Assign50 extends StatefulWidget {
  const Assign50({super.key});

  @override
  State createState() => _Assign50State();
}

class _Assign50State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign50"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.red, offset: Offset(10, 10))],
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.purple, Colors.green],
              stops: [0.1, 0.4, 0.8],
            ),
          ),
        ),
      ),
    );
  }
}
