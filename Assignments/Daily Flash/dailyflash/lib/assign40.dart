import 'package:flutter/material.dart';

class Assign40 extends StatefulWidget {
  const Assign40({super.key});

  @override
  State createState() => _Assign40State();
}

class _Assign40State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign40"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Title1",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Give some description here",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.purple,
                          child: const Icon(
                            Icons.add,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          );
        }),
      ),
    );
  }
}
