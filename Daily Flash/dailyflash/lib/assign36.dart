import 'package:flutter/material.dart';

class Assign36 extends StatefulWidget {
  const Assign36({super.key});

  @override
  State createState() => _Assign36State();
}

class _Assign36State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign36"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 411.4,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue.shade100,
                        shape: BoxShape.circle),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 678,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Container(
                        height: 190,
                        width: 150,
                        color: Colors.amber.shade200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Container(
                        height: 190,
                        width: 150,
                        color: Colors.red.shade200,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Container(
                        height: 130,
                        width: 350,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Container(
                        height: 190,
                        width: 150,
                        color: Colors.purple.shade300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: Container(
                        height: 190,
                        width: 150,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
