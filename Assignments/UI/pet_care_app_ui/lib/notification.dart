import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app_ui/btmnavgtnbar.dart';

class Notifypage extends StatefulWidget {
  const Notifypage({super.key});

  @override
  State createState() => _NotifypageState();
}

class _NotifypageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                        color: const Color.fromRGBO(245, 146, 69, 1),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(1, -1),
                              blurRadius: 15,
                              color: Colors.black26)
                        ]),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 120),
                Text(
                  "Notification",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 124,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, -1),
                                blurRadius: 10,
                                color: Colors.black12)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                    "Your checkout is successfull, product is on \ntne way",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.app_registration_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text("Appointment request accepted",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "25 September",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 188,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, -1),
                                blurRadius: 10,
                                color: Colors.black12)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                    "Your checkout is successfull, product is on \ntne way",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.app_registration_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text("Appointment request accepted",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.vaccines_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text("Vaccinate your pet timely",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "15 September",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 188,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, -1),
                                blurRadius: 10,
                                color: Colors.black12)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                    "Your checkout is successfull, product is on \ntne way",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.app_registration_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text("Appointment request accepted",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.vaccines_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text("Vaccinate your pet timely",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "21 October",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 188,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, -1),
                                blurRadius: 10,
                                color: Colors.black12)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                    "Your checkout is successfull, product is on \ntne way",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.app_registration_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text("Appointment request accepted",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          252, 219, 193, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.vaccines_rounded,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text("Vaccinate your pet timely",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
