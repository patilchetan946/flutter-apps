import 'package:flutter/material.dart';
import 'package:shopsie/homescreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State createState() => _ProfileState();
}

class _ProfileState extends State {
  List<Map> txtlist = [
    {"text": "My Account", "icon": Icons.person_2_outlined},
    {"text": "Notification", "icon": Icons.notifications_none_outlined},
    {"text": "Settings", "icon": Icons.settings},
    {"text": "Help Center", "icon": Icons.help_outline},
    {"text": "Log Out", "icon": Icons.logout},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        elevation: 0,
        centerTitle: true,
        title: const Text("Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        leading: GestureDetector(
          onTap: () {
            setState(() {
              const Homepage();
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(4),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Homepage();
                  }));
                });
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 130,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/cat.png",
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 800,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 80,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 245, 246, 249),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              txtlist[index]["icon"],
                              color: const Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              txtlist[index]["text"],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 120),
                            const Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        )),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
