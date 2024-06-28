import 'package:flutter/material.dart';

class Assign54 extends StatefulWidget {
  const Assign54({super.key});

  @override
  State createState() => _Assign54State();
}

class _Assign54State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign54"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: TextField(
            maxLength: 20,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              label: const Text("Enter your name"),
            ),
          ),
        ),
      ),
    );
  }
}
