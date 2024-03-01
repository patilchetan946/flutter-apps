import 'package:flutter/material.dart';

class style7 extends StatefulWidget {
  const style7({super.key});

  @override
  State createState() => _style7State();
}

class _style7State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Style7(Decoration)")),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
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
