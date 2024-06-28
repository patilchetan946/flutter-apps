import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_care_app_ui/doctorProfile.dart';
import 'package:pet_care_app_ui/groomingPage.dart';
import 'package:pet_care_app_ui/notification.dart';
import 'package:pet_care_app_ui/trainingPage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State {
  final TextEditingController _searchText = TextEditingController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/profile.png",
                    scale: 0.8,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Hello, Chetan",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Good Morning!",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 120, 120, 120),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notifypage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Iconsax.notification,
                      size: 32,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: const Color.fromRGBO(250, 200, 162, 1), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    controller: _searchText,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                        hintText: "search",
                        suffixIcon: Icon(
                          Iconsax.search_normal_1,
                          color: Color.fromRGBO(245, 146, 69, 1),
                          size: 20,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 99,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, -1),
                        blurRadius: 10,
                        color: Colors.black12)
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("In Love with Pets?",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Get all what you need for them",
                            style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: SizedBox(
                        child: Image.asset(
                          "assets/banner1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DoctorprofilePage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/category1.png",
                          scale: 0.9,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Veterinary",
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Groomingpage()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/category3.png",
                          scale: 0.9,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Grooming",
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/category4.png",
                        scale: 0.9,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Pet Store",
                        style: GoogleFonts.poppins(fontSize: 14),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Trainpage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/category2.png",
                          scale: 0.9,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Training",
                          style: GoogleFonts.poppins(fontSize: 14),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Event",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 126,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, -1),
                          blurRadius: 10,
                          color: Colors.black12)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Find and Join in Special \nEvents For Your Pets!",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 15),
                          Container(
                            height: 34,
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "See More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 130,
                        child: Image.asset(
                          "assets/event1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Community",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 126,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, -1),
                          blurRadius: 10,
                          color: Colors.black12)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Connect and share with \ncommunities!",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 34,
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              "See More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset(
                        "assets/banner1.png",
                        width: 140,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BtmNavigationBar(),
    );
  }
}
