import 'package:flutter/material.dart';

class Assign46 extends StatefulWidget {
  const Assign46({super.key});

  @override
  State createState() => _Assign46State();
}

class _Assign46State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign46"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: [Colors.red, Colors.blue], stops: [0.1, 0.9]),
          ),
        ),
      ),
    );
  }
}
