import 'package:flutter/material.dart';

class Assign26 extends StatefulWidget {
  const Assign26({super.key});

  @override
  State createState() => _Assign26State();
}

class _Assign26State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign26"),
      ),
      body: Column(
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5t0Tod1qGp3mmAvZV-_VVFutMGXLFkLW6Qw&usqp=CAU",
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: const Text(
              "Pizza",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40, left: 15),
            child: const Text(
              "A Large circle of flat bread baked with cheese,tomatoes and vegetables spread on top",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
