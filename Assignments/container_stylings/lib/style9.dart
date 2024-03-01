import 'package:flutter/material.dart';

class style9 extends StatefulWidget {
  const style9({super.key});

  @override
  State createState() => _style9State();
}

class _style9State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style9(Gradient)")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue, width: 5),
            gradient: const LinearGradient(
              stops: [0.3, 0.5],
              colors: [Colors.red, Colors.green],
            ),
          ),
        ),
      ),
    );
  }
}
