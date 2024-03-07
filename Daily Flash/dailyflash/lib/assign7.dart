import 'package:flutter/material.dart';

class Assign7 extends StatefulWidget {
  const Assign7({super.key});

  @override
  State createState() => _Assign7State();
}

class _Assign7State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign7"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
              left: BorderSide(color: Colors.red, width: 5),
            ),
          ),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "Assign7",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
