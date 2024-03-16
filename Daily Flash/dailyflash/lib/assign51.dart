import 'package:flutter/material.dart';

class Assign51 extends StatefulWidget {
  const Assign51({super.key});

  @override
  State createState() => _Assign51State();
}

class _Assign51State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign51"),
      ),
      body: const Center(
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Colors.redAccent,
                  width: 3,
                )),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Colors.greenAccent,
                width: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
