import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          heightFactor: double.infinity,
          widthFactor: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: 10,
                color: Colors.black,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.network(
                          "https://media.istockphoto.com/id/1182479181/vector/ashoka-chakra.jpg?s=612x612&w=0&k=20&c=bDrv1c_tw5pOa-R0Agg62ZjeMJl3S22Trk-ViEhJiIU=",
                          height: 80,
                          width: 90,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 400,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
