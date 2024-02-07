import 'package:flutter/material.dart';

class Paddingassignment extends StatelessWidget {
  const Paddingassignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding & Margin",
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Image.network(
              "https://resizing.flixster.com/0gJ_Okjba8EqDgUkGazhmIEyvfs=/300x300/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p17162880_i_h9_aa.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
