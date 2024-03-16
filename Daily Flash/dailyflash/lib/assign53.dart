import 'package:flutter/material.dart';

class Assign53 extends StatefulWidget {
  const Assign53({super.key});

  @override
  State createState() => _Assign53State();
}

class _Assign53State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign53"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Enter your name",
                fillColor: Colors.amber,
                filled: true),
          ),
        ),
      ),
    );
  }
}
