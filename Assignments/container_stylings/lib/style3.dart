import 'package:flutter/material.dart';

class style3 extends StatefulWidget {
  const style3({super.key});

  @override
  State createState() => _style3State();
}

class _style3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Container Style3")),
        body: Center(
          child: Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Container(
              color: Colors.black,
            ),
          ),
        ));
  }
}
