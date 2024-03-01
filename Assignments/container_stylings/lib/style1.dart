import 'package:flutter/material.dart';

class style1 extends StatefulWidget {
  const style1({super.key});

  @override
  State createState() => _style1State();
}

class _style1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Container Style1")),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ));
  }
}
