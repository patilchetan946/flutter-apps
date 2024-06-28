import 'package:flutter/material.dart';

class Assign8 extends StatefulWidget {
  const Assign8({super.key});

  @override
  State createState() => _Assign8State();
}

class _Assign8State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign8"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.purple.shade100,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.purple, width: 5),
          ),
        ),
      ),
    );
  }
}
