import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget {
  const Assign2({super.key});
  @override
  State<Assign2> createState() => _Assign2State();
}

class _Assign2State extends State<Assign2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Assignment2",
          ),
          actions: const [
            Icon(
              Icons.media_bluetooth_off,
            ),
          ],
        ),
      ),
    );
  }
}
