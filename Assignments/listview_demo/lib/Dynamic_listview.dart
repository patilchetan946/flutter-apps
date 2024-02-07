import 'package:flutter/material.dart';

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});
  @override
  State<DisplayImages> createState() {
    return _DisplayImagesState();
  }
}

class _DisplayImagesState extends State<DisplayImages> {
  int count = 0;
  List<int> number = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Listview Builder Demo"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index) {
          return Container(
              color: Colors.red,
              height: 30,
              width: 500,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "${number[index]}",
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count++;
              number.add(count);
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
