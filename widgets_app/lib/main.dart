import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetsApp extends StatefulWidget {
  const WidgetsApp({super.key});
  @override
  State<WidgetsApp> createState() {
    return _WidgetsApp();
  }
}

class _WidgetsApp extends State<WidgetsApp> {
  int count = -1;
  List<int> num = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "18 Widgets",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
          actions: const [
            Icon(Icons.access_alarm),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search)
          ],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  (num[index] <= 0)
                      ? Container(
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  (num[index] <= 0)
                      ? Container(
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        (num[index] >= 1)
                            ? Image.network(
                                "https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                height: 200,
                                width: 250,
                              )
                            : Container(),
                        const SizedBox(
                          width: 20,
                        ),
                        (num[index] >= 2)
                            ? Image.network(
                                "https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&w=600",
                                height: 200,
                                width: 250,
                              )
                            : Container(),
                        const SizedBox(
                          width: 20,
                        ),
                        (num[index] >= 3)
                            ? Image.network(
                                "https://images.pexels.com/photos/381739/pexels-photo-381739.jpeg?auto=compress&cs=tinysrgb&w=600",
                                height: 200,
                                width: 250,
                              )
                            : Container(),
                        const SizedBox(
                          width: 20,
                        ),
                        (num[index] >= 4)
                            ? Image.asset(
                                "assets/pexels-photo-135940.webp",
                                height: 200,
                                width: 250,
                              )
                            : Container(),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            setState(() {
              count++;
              num.add(count);
            });
          },
          child: const Icon(
            Icons.add,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
          ],
        ),
      ),
    );
  }
}
