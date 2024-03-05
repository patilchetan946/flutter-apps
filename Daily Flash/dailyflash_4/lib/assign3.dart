import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State createState() => _Assign3State();
}

class _Assign3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign3"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text(
                "Chetan",
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.ac_unit_sharp)
            ],
          ),
        ),
      ),
    );
  }
}
