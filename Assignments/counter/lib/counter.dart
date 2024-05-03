import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State createState() => _CounterState();
}

class _CounterState extends State {
  int flutter = 0;
  int java = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      flutter++;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    color: Colors.deepOrange,
                    child: const Text(
                      "Flutter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  height: 100,
                  width: 100,
                  child: Text(
                    "$flutter",
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      java++;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    color: Colors.deepPurple,
                    child: const Text(
                      "Java",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  height: 100,
                  width: 100,
                  child: Text(
                    "$java",
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
