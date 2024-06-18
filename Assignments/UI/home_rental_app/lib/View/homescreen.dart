import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => HomeScreenState();
}

class HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hey Dravid,",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(101, 101, 101, 1)),
                ),
                const Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/profile.png"),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Let's find your best \nresidence",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 46,
              width: 346,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  labelText: "Search your favourite paradise",
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Most Popular",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const DetailScreen();
                        }));
                      });
                    },
                    child: Container(
                      height: 306,
                      width: 211,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/house1.png",
                              height: 196,
                              width: 189,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Night Hill Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "London,Night Hill",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(r"$5900",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(32, 169, 247, 1),
                                    )),
                                Text(
                                  "/Month",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 306,
                      width: 211,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Container(
                              height: 196,
                              width: 189,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                //color: Colors.red
                              ),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                "assets/house2.jpeg",
                                height: 196,
                                width: 189,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Night Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "London,New Park",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(r"$4900",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(32, 169, 247, 1),
                                    )),
                                Text(
                                  "/Month",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 306,
                      width: 211,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Image.asset(
                              "assets/house1.png",
                              height: 196,
                              width: 189,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Night Hill Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "London,Night Hill",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(r"$5900",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(32, 169, 247, 1),
                                    )),
                                Text(
                                  "/Month",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Nearby your location",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const Spacer(),
                Text(
                  "More",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Image.asset(
                    "assets/btm img.png",
                    height: 100,
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jumeriah Golf Estates Villa",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 18,
                              color: Color.fromRGBO(90, 90, 90, 1),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "London,Area Plam Jumeriah",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            const Icon(
                              Icons.bed,
                              size: 18,
                              color: Color.fromRGBO(90, 90, 90, 1),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "4 Bedrooms",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(90, 90, 90, 1),
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.bathtub_rounded,
                              size: 18,
                              color: Color.fromRGBO(90, 90, 90, 1),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "5 Bathrooms",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(90, 90, 90, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140, top: 10),
                          child: Row(
                            children: [
                              Text(r"$4500",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(32, 169, 247, 1),
                                  )),
                              Text(
                                "/Month",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(72, 72, 72, 1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
