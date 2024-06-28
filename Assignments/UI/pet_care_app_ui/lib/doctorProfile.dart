import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app_ui/btmnavgtnbar.dart';

class DoctorprofilePage extends StatefulWidget {
  const DoctorprofilePage({super.key});

  @override
  State createState() => _DoctorprofilepageState();
}

class _DoctorprofilepageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 70,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BtmNavigationBar(),
                      ),
                    );
                  },
                  child: Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, -1),
                              blurRadius: 15,
                              color: Colors.black26)
                        ]),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 120),
                Text(
                  "Veterinary",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(
            "assets/doctor2.png",
            scale: 0.9,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Dr. Anna Jhonason",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "Veterinary Behavioral",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(1, -1),
                                    blurRadius: 15,
                                    color: Colors.black12)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "11 years",
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(1, -1),
                                    blurRadius: 15,
                                    color: Colors.black12)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  r"$250",
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(1, -1),
                                    blurRadius: 15,
                                    color: Colors.black12)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "2.5 km",
                                  style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromRGBO(245, 146, 69, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "About",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      Text(
                        "Available Days",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.calendar_month_rounded,
                        size: 22,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "October,2024",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Fri, 6",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Sat, 7",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Sun, 8",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Mon, 9",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Tue, 9",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 65,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "Wed, 10",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(children: [
                      Text(
                        "Available Time",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 65,
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "09:00",
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 65,
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "15:00",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "19:00",
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Container(
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(252, 219, 193, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.map_outlined,
                              size: 20,
                              color: Color.fromARGB(255, 181, 100, 39),
                            ),
                            Text(
                              "See Location",
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 181, 100, 39),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        )),
                    const SizedBox(height: 10),
                    Container(
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(255, 146, 69, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Now",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
