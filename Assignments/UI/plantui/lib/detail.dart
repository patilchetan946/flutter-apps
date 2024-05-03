import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantui/home.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 28,
                color: Color.fromRGBO(118, 152, 75, 1),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 320,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/plant3.png",
              //scale: 0.9,
            ),
          ),
          const SizedBox(height: 18),
          Container(
              height: 20,
              alignment: Alignment.center,
              child: Image.asset("assets/Three_dot.png")),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Snake Plants",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(48, 48, 48, 1)),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Plants make your life with minimal and\nhappy love the plants more and enjoy life.",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(48, 48, 48, 1)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(118, 152, 75, 1)),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/height.png"),
                        Image.asset("assets/temp.png"),
                        Image.asset("assets/pot.png"),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              "Total Price",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "₹ 350",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 55,
                          width: 170,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(103, 133, 74, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/shopping_white.png"),
                              const SizedBox(width: 15),
                              Text(
                                "Add To Cart",
                                style: GoogleFonts.rubik(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              // const SizedBox(width: 1),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
