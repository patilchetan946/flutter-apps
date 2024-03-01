import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() {
    return ToDoListState();
  }
}

class ToDoListState extends State {
  int count = 0;
  int idx = -1;
  List<int> noofCards = [];
  List cardcolors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontSize: 26,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: noofCards.length,
        itemBuilder: (context, index) {
          return Container(
            height: 120,
            width: 500,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: 1)
              ],
              color: cardcolors[index = index % cardcolors.length],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                      child: Image.asset("assets/Group 42.png"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "10 July 2023",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: const Color.fromRGBO(132, 132, 132, 1)),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 300,
                      height: 20,
                      child: Text(
                        "Lorem Ipsum is simply setting industry.",
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: Text(
                        "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(84, 84, 84, 1),
                          fontSize: 11,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mode_edit_outline_outlined),
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            iconSize: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline_outlined),
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count++;
              noofCards.add(count);
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
