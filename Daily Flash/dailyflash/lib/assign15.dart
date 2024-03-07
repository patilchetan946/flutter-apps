import "package:flutter/material.dart";

class Assign15 extends StatefulWidget {
  const Assign15({super.key});

  @override
  State createState() => _Assign15State();
}

class _Assign15State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign15"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue], stops: [0.5, 0.5])),
        ),
      ),
    );
  }
}
