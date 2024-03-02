import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State createState() => _Assign3State();
}

class _Assign3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign3"),
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
