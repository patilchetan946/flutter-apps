import 'package:flutter/material.dart';

class Assign27 extends StatefulWidget {
  const Assign27({super.key});

  @override
  State createState() => _Assign27State();
}

class _Assign27State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign27"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwWO5ey-lskMBK9__wzfPY2QPeWp9ChTHBU9VvRnTteA&s",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 250,
              color: Colors.purple,
              child: GestureDetector(
                child: const Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
