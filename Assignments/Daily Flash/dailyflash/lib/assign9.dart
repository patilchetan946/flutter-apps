import 'package:flutter/material.dart';

class Assign9 extends StatefulWidget {
  const Assign9({super.key});

  @override
  State createState() => _Assign9State();
}

class _Assign9State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign9"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.pink, width: 5),
          ),
          padding: const EdgeInsets.all(5),
          child: const Text(
            "Chetan Patil",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
