import 'package:flutter/material.dart';

class style4 extends StatefulWidget {
  const style4({super.key});

  @override
  State createState() => _style4State();
}

class _style4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style4")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Container(
            color: Colors.black,
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
          ),
        ),
      ),
    );
  }
}
