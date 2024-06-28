import "package:flutter/material.dart";

class Assign2 extends StatefulWidget {
  const Assign2({super.key});

  @override
  State createState() => _Assign2State();
}

class _Assign2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        // title: const Text(
        //   "Assign2",
        //   style: TextStyle(
        //       fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.back_hand_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.label_important_outline),
          ),
        ],
      ),
    );
  }
}
