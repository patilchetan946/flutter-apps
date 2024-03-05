import "package:flutter/material.dart";

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State createState() => _Assign4State();
}

class _Assign4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign4"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  offset: Offset(-5, -5),
                  color: Colors.red,
                  spreadRadius: 2,
                  blurRadius: 5)
            ],
          ),
        ),
      ),
    );
  }
}
