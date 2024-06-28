import 'package:flutter/material.dart';

class Assign18 extends StatefulWidget {
  const Assign18({super.key});

  @override
  State createState() => _Assign18State();
}

class _Assign18State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign18"),
      ),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            "Chetan",
            style: TextStyle(fontSize: 20),
          ),
          icon: const Icon(Icons.save),
        ),
      ),
    );
  }
}
