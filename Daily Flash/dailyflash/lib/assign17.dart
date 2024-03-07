import 'package:flutter/material.dart';

class Assign17 extends StatefulWidget {
  const Assign17({super.key});

  @override
  State createState() => _Assign17State();
}

class _Assign17State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign17"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: const CircleBorder(
              side: BorderSide(color: Colors.red, width: 5),
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
