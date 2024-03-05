import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State createState() => _Assign2State();
}

class _Assign2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign2"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(
              side: BorderSide(color: Colors.red, width: 2),
            ),
            minimumSize: const Size(200, 200),
          ),
          onPressed: () {},
          child: const Text("Elevated Button"),
        ),
      ),
    );
  }
}
