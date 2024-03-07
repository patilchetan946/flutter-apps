import "package:flutter/material.dart";

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State createState() => _Assign3State();
}

class _Assign3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Assign3",
          style: TextStyle(
              fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
