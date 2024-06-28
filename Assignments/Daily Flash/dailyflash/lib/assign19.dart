import 'package:flutter/material.dart';

class Assign19 extends StatefulWidget {
  const Assign19({super.key});

  @override
  State createState() => _Assign19State();
}

class _Assign19State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign19"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {},
          hoverColor: Colors.orange,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
