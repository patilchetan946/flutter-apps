import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Portfolio());
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() {
    return _PortfolioState();
  }
}

class _PortfolioState extends State<Portfolio> {
  int count = -1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            "PORTFOLIO",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
            ),
          ),
          actions: const [
            Icon(Icons.home),
          ],
        ),
        body: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                (count >= 0)
                    ? SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            "assets/Images/Snapchat-15533158383.jpg"),
                      )
                    : const SizedBox(),
                (count >= 0)
                    ? const Text(
                        "Chetan Patil",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 40,
                ),
                (count >= 1)
                    ? const Text(
                        "Basic Details:-",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const SizedBox(),
                (count >= 1)
                    ? const Text(
                        " \n10th- 82.8% \n12th- 87.83% \nBE-Comp(SKNCOE) \nCGPA:- 8.7",
                        style: TextStyle(fontSize: 20),
                      )
                    : const SizedBox(),
                (count >= 1)
                    ? const SizedBox(
                        height: 40,
                      )
                    : const SizedBox(),
                (count >= 2)
                    ? const Text(
                        "Dream Company",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const SizedBox(),
                (count >= 2)
                    ? SizedBox(
                        height: 150,
                        width: 200,
                        child: Image.network(
                          "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202203/microsoft_660_220420014128_230321092634-sixteen_nine.jpg?size=948:533",
                          height: 100,
                          width: 100,
                        ),
                      )
                    : const SizedBox(),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
