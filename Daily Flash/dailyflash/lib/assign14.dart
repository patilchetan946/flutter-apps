import "package:flutter/material.dart";

class Assign14 extends StatefulWidget {
  const Assign14({super.key});

  @override
  State createState() => _Assign14State();
}

class _Assign14State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign14"),
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
