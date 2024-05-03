import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantui/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/homering.png")),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Find your \nfavorite plants",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 16.1,
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                        )
                      ],
                    ),
                    child: Image.asset(
                      "assets/shopping-bag.png",
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      width: 350,
                      margin: const EdgeInsets.only(top: 10, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(204, 231, 185, 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 28, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "02-23 April",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 0.6)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/Spider_Plant.png",
                            height: 120,
                            width: 120,
                            //scale: 0.5,
                          ),
                          const SizedBox(
                            width: 25,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: Image.asset("assets/Three_dot.png")),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Indoor",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Detail()));
                      },
                      child: Container(
                        width: 160,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 7.52),
                                  blurRadius: 18.8,
                                  color: Color.fromRGBO(0, 0, 0, 0.06))
                            ]),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/plant3.png",
                              height: 150,
                              width: 150,
                              scale: 0.6,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Snake Plants",
                                      style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(48, 48, 48, 1)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "₹350",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    62, 102, 24, 1)),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                237, 238, 235, 1),
                                          ),
                                          child: Image.asset(
                                              "assets/shopping-bag_small.png"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Outdoor",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Detail()));
                      },
                      child: Container(
                        width: 160,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 7.52),
                                  blurRadius: 18.8,
                                  color: Color.fromRGBO(0, 0, 0, 0.06))
                            ]),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/plant3.png",
                              height: 150,
                              width: 150,
                              // scale: 0.8,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Snake Plants",
                                      style: GoogleFonts.dmSans(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(48, 48, 48, 1)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "₹350",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    62, 102, 24, 1)),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(
                                                237, 238, 235, 1),
                                          ),
                                          child: Image.asset(
                                              "assets/shopping-bag_small.png"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
