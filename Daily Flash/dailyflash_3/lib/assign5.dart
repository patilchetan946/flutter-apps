import "package:flutter/material.dart";

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State createState() => _Assign5State();
}

class _Assign5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign5"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
