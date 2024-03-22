import 'package:flutter/material.dart';

class Assign56 extends StatefulWidget {
  const Assign56({super.key});

  @override
  State createState() => _Assign56();
}

class _Assign56 extends State {
  bool passvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Assign56"),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                obscureText: passvisible,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: passvisible
                        ? IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passvisible = !passvisible;
                              });
                            },
                          )
                        : IconButton(
                            icon: const Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                passvisible = !passvisible;
                              });
                            },
                          )),
              )),
        ));
  }
}
