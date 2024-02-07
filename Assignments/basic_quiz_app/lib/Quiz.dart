import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int count = 1;
  void increment() {
    if (count < 10) {
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiz Application",
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Question No : ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "$count / 10",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 200,
            height: 20,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("A. Virat")),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 20,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("B. Virat")),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 20,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("C. Virat")),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 20,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("D. Virat")),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}
