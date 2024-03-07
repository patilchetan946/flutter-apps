import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EduApp(),
    );
  }
}

class EduApp extends StatefulWidget {
  const EduApp({super.key});
  @override
  State createState() => _EduAppState();
}

class _EduAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 40,
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_outlined,
                        size: 40,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome to New",
                      style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 27),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Educourse",
                      style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 37),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Enter your keyword",
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Course For You",
                      style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 242,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(197, 4, 98, 1),
                                        Color.fromRGBO(80, 3, 112, 1)
                                      ])),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "UX Designer from Scratch.",
                                      style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.white)),
                                    )),
                                    Image.asset(
                                      "assets/card1.png",
                                      height: 160,
                                      width: 160,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 242,
                              width: 190,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(0, 77, 228, 1),
                                        Color.fromRGBO(1, 47, 135, 1)
                                      ])),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "UX Designer from Scratch.",
                                      style: GoogleFonts.jost(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.white)),
                                    )),
                                    Image.asset(
                                      "assets/card2.png",
                                      height: 160,
                                      width: 160,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Course By Category",
                      style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                              height: 36,
                              width: 36,
                              child: Image.asset("assets/icon1.png"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "UI/UX",
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                              height: 36,
                              width: 36,
                              child: Image.asset("assets/icon2.png"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "VISUAL",
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                              height: 36,
                              width: 36,
                              child: Image.asset("assets/icon3.png"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "ILLUSTRATON",
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                              height: 36,
                              width: 36,
                              child: Image.asset("assets/icon4.png"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "PHOTO",
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
