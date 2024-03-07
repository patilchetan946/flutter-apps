import 'package:flutter/material.dart';

class Assign20 extends StatefulWidget {
  const Assign20({super.key});

  @override
  State createState() => _Assign20State();
}

class _Assign20State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.purple,
          child: const Icon(Icons.upgrade_outlined)),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign20"),
      ),
    );
  }
}
