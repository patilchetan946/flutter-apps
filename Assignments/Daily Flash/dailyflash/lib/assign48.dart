import 'package:flutter/material.dart';

class Assign48 extends StatefulWidget {
  const Assign48({super.key});

  @override
  State createState() => _Assign48State();
}

class _Assign48State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign48"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.amber.shade700, Colors.green],
                stops: [0.5, 0.5],
                transform: GradientRotation(40)),
          ),
        ),
      ),
    );
  }
}
