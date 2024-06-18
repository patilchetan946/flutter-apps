import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/View/player.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State createState() => GalleryState();
}

class GalleryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/galImg.png",
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A.L.O.N.E",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 37,
                          width: 127,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 46, 0, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Subscribe",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color.fromRGBO(255, 46, 0, 1)),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(248, 162, 69, 1)),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/Dead.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Dead inside",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2020",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Player();
                              }));
                            });
                          },
                          child: Container(
                            height: 140,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/Alone.png"),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Alone",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/Heartless.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Heartless",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/Dead.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Dead inside",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2020",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(203, 200, 200, 1)),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(248, 162, 69, 1)),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/list1.png",
                        height: 72,
                        width: 67,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "2023 * Easy Living",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/list2.png",
                        height: 72,
                        width: 67,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Smile",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "2023 * Berrechid",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/list1.png",
                        height: 72,
                        width: 67,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We Are Chaos",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "2023 * Easy Living",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ))
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
