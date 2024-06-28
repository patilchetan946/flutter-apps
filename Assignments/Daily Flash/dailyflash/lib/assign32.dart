import 'package:flutter/material.dart';

class Assign32 extends StatefulWidget {
  const Assign32({super.key});

  @override
  State createState() => _Assign32State();
}

class _Assign32State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign32"),
      ),
      body: Center(
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 40,
                color: Colors.orange,
              ),
              SizedBox(width: 15),
              Text(
                "Rating: 4.5",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
