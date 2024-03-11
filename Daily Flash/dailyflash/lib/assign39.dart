import 'package:flutter/material.dart';

class Assign39 extends StatefulWidget {
  const Assign39({super.key});

  @override
  State createState() => _Assign39State();
}

class _Assign39State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign39"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://as1.ftcdn.net/v2/jpg/02/59/39/46/1000_F_259394679_GGA8JJAEkukYJL9XXFH2JoC3nMguBPNH.jpg"),
                          )),
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      "Chetan patil",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
