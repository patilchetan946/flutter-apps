import 'package:flutter/material.dart';

class Assign47 extends StatefulWidget {
  const Assign47({super.key});

  @override
  State createState() => _Assign47State();
}

class _Assign47State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign47"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.blue],
              stops: [0.6, 0.9],
            ),
          ),
        ),
      ),
    );
  }
}
