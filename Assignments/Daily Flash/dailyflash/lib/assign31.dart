import 'package:flutter/material.dart';

class Assign31 extends StatefulWidget {
  const Assign31({super.key});

  @override
  State createState() => _Assign31State();
}

class _Assign31State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign31"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.yellow,
            ),
            Container(
              height: 70,
              width: 80,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
