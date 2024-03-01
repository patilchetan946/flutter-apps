import 'package:flutter/material.dart';

class style6 extends StatefulWidget {
  const style6({super.key});

  @override
  State createState() => _style6State();
}

class _style6State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style6(Decoration)")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              color: Colors.blue,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}
