import 'package:flutter/material.dart';

class Assign23 extends StatefulWidget {
  const Assign23({super.key});

  @override
  State createState() => _Assign23State();
}

class _Assign23State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assign23"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://img.mensxp.com/media/content/2024/Mar/Image-3_65e7ea400473f.jpeg",
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 5),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 208, 118, 224),
                      offset: Offset(1.0, 0.1),
                      blurRadius: 4)
                ],
              ),
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: const Text(
                "Hritik Roshan",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
