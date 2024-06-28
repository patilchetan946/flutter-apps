import 'dart:ui';

import 'package:flutter/material.dart';

class Assign55 extends StatefulWidget {
  const Assign55({super.key});

  @override
  State createState() => _Assign55State();
}

class _Assign55State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign55"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: TextField(
            maxLines: 5,
            minLines: 5,
            cursorColor: Colors.red,
            selectionHeightStyle: BoxHeightStyle.includeLineSpacingMiddle,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              label: const Text("Enter your name"),
            ),
          ),
        ),
      ),
    );
  }
}
