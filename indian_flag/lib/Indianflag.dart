import 'package:flutter/material.dart';

class OnClickIndianFlag extends StatefulWidget {
  const OnClickIndianFlag({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _OnClickIndianFlagState createState() => _OnClickIndianFlagState();
}

class _OnClickIndianFlagState extends State<OnClickIndianFlag> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Text("click"),
      ),
      body: Container(
        //color: Colors.grey[300],

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (counter >= 0)
                ? Container(
                    height: 600,
                    width: 20,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              children: [
                (counter >= 1)
                    ? Container(
                        height: 100,
                        width: 350,
                        color: Colors.orange,
                      )
                    : Container(),
                (counter >= 2)
                    ? Container(
                        color: Colors.white,
                        width: 350,
                        height: 100,
                        child: (counter >= 3)
                            ? Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDYb7kQjaND1bXkL8aa287xGo8YU53nSqyrnEALoyXRw&s",
                                height: 40,
                                width: 40,
                              )
                            : Container()

                        // Second way is this to add the img from netwok
                        //       decoration: const BoxDecoration(
                        // shape: BoxShape.circle,
                        // image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDYb7kQjaND1bXkL8aa287xGo8YU53nSqyrnEALoyXRw&s"))),
                        // child : Container(
                        // decoration: const BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDYb7kQjaND1bXkL8aa287xGo8YU53nSqyrnEALoyXRw&s"))),

                        )
                    : Container(),
                (counter >= 4)
                    ? Container(
                        height: 100,
                        width: 350,
                        color: Colors.green[200],
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
