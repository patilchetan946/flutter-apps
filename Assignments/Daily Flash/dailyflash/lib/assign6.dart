import 'package:flutter/material.dart';

class Assign6 extends StatefulWidget {
  const Assign6({super.key});

  @override
  State createState() => _Assign6State();
}

class _Assign6State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ASSIGN6",
          style: TextStyle(
            color: Color.fromARGB(255, 64, 1, 1),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.red, width: 15),
          ),
          child: const Center(
            child: Text(
              "Assign6",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
