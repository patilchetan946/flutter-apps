import 'package:flutter/material.dart';

class Assign5 extends StatefulWidget {
  const Assign5({super.key});

  @override
  State createState() => _Assign5State();
}

class _Assign5State extends State {
  int count = 0;
  colors() {
    if (count % 2 == 0) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  msg() {
    if (count % 2 == 0) {
      return const Text(
        "Click ME !",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      );
    } else {
      return const Text(
        "Container Tapped",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign5"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              colors(),
            ),
          ),
          onPressed: () {
            setState(() {
              colors();
              msg();
              count++;
            });
          },
          child: Container(
            height: 300,
            width: 300,
            alignment: Alignment.center,
            child: msg(),
          ),
        ),
      ),
    );
  }
}
