import "package:flutter/material.dart";

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State createState() => _Assign4State();
}

class _Assign4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Assign4",
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
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red, width: 20)),
        ),
      ),
    );
  }
}
