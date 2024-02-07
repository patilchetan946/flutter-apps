import 'package:flutter/material.dart';

class Assign7 extends StatefulWidget {
  const Assign7({super.key});
  @override
  State<Assign7> createState() => _Assign7State();
}

class _Assign7State extends State<Assign7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT7",
          ),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg"),
              Image.network(
                  "https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954_640.jpg"),
              Image.network(
                  "https://cdn.pixabay.com/photo/2015/07/05/10/18/tree-832079_640.jpg"),
              Image.network(
                  "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_640.jpg"),
              Image.network(
                  "https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072_640.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
