import 'package:flutter/material.dart';

class Assign16 extends StatefulWidget {
  const Assign16({super.key});

  @override
  State createState() => _Assign16State();
}

class _Assign16State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign16"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(30),
              backgroundColor: Colors.black,
              shadowColor: Colors.red,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          child: const Text("Elevated button"),
        ),
      ),
    );
  }
}
