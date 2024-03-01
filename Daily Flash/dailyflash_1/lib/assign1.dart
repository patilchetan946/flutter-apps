import "package:flutter/material.dart";

class Assign1 extends StatefulWidget {
  const Assign1({super.key});

  @override
  State createState() => _Assign1State();
}

class _Assign1State extends State {
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
        title: const Text(
          "Assign1",
          style: TextStyle(
              fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
    );
  }
}
