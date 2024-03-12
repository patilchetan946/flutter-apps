import 'package:flutter/material.dart';

class Assign43 extends StatefulWidget {
  const Assign43({super.key});

  @override
  State createState() => _Assign43State();
}

class _Assign43State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign43"),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 180,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_640.jpg",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: const Text(
                            "Core2Web",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: const Text(
                            "Biencaps",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Container(
                          height: 50,
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: const Text(
                            "Incubators",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
