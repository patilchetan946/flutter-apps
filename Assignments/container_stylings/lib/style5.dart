import 'package:flutter/material.dart';

class style5 extends StatefulWidget {
  const style5({super.key});

  @override
  State createState() => _style5State();
}

class _style5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style5(Decoration)")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.yellow,
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}
