import 'package:flutter/material.dart';

class style2 extends StatefulWidget {
  const style2({super.key});

  @override
  State createState() => _style2State();
}

class _style2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style1(Padding)")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
