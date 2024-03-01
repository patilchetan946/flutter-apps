import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment23(),
    );
  }
}

class Assignment23 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Assignment23State();
  }
}

class _Assignment23State extends State<Assignment23> {
  TextEditingController personname = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController locationname = TextEditingController();
  List listc = [];
  bool flag = false;
  int index = 0;
  List Info = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dream Company"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                child: TextField(
                  controller: personname,
                  decoration: const InputDecoration(
                      hintText: "Your Name ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                child: TextField(
                  controller: companyname,
                  decoration: const InputDecoration(
                      hintText: " Company Name ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                child: TextField(
                  controller: locationname,
                  decoration: const InputDecoration(
                      hintText: "Location",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                index++;
                listc.add(index);
                Info.add(
                    [personname.text, companyname.text, locationname.text]);
                personname.clear();
                companyname.clear();
                locationname.clear();

                setState(() {});
              },
              child: const Text("Submit")),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 300,
            child: ListView.builder(
                itemCount: listc.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      (listc[index] > 0)
                          ? Container(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              width: 350,
                              height: 150,
                              child: Column(children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child:
                                      Text("Person Name : ${Info[index][0]}"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child:
                                      Text("Company Name: ${Info[index][1]}"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child:
                                      Text("Location Name: ${Info[index][2]}"),
                                ),
                                Image.network(
                                    height: 60,
                                    width: 80,
                                    "https://53.fs1.hubspotusercontent-na1.net/hub/53/hubfs/image8-2.jpg?width=893&height=600&name=image8-2.jpg"),
                              ]),
                            )
                          : Container()
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
