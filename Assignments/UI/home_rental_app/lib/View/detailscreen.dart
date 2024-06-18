import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/homescreen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
                bottom:
                    100), // Adjusted padding to avoid overlap with the button
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 80), // Added top padding for the fixed header
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Stack(
                    children: [
                      Container(
                        height: 244,
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/detlimg.png",
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 15),
                        child: Container(
                          height: 27,
                          width: 56,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(112, 200, 250, 1)),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(251, 227, 12, 1),
                              ),
                              Text(
                                '4.9',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Night Hill Villa",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "London,Night Hill",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(72, 72, 72, 1),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Text(r"$5900",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(32, 169, 247, 1),
                                )),
                            Text(
                              "/Month",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(72, 72, 72, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Icon(
                                Icons.bed,
                                size: 30,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Bedrooms",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Icon(
                                Icons.bathtub,
                                size: 30,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Bathrooms",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 141,
                        width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Icon(
                                Icons.fullscreen_sharp,
                                size: 30,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Square ft",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "7,000 sq ft",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromRGBO(237, 237, 237, 1),
              padding: const EdgeInsets.only(
                  left: 6,
                  right: 20,
                  top: 50), // Adjusted padding for status bar
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const HomeScreen();
                      }));
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                  ),
                  const SizedBox(width: 120),
                  Text(
                    "Details",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Container(
                height: 55,
                width: 220,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(32, 169, 247, 1),
                ),
                child: Text(
                  "Rent Now",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
