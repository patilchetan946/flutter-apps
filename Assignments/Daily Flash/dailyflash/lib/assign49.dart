import 'package:flutter/material.dart';

class Assign49 extends StatefulWidget {
  const Assign49({super.key});

  @override
  State createState() => _Assign49State();
}

class _Assign49State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign49"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.red, offset: Offset(10, 10))
            ],
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.purple],
              stops: [0.1, 0.4],
            ),
          ),
        ),
      ),
    );
  }
}
