import 'package:flutter/material.dart';

class Assign24 extends StatefulWidget {
  const Assign24({super.key});

  @override
  State createState() => _Assign24State();
}

class _Assign24State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign24"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            const Spacer(),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            const Spacer(),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
