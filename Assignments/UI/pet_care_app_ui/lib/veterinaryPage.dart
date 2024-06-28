import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app_ui/DoctorProfile.dart';

class Veterinarypage extends StatefulWidget {
  const Veterinarypage({super.key});

  @override
  State createState() => _VeterinaryState();
}

class _VeterinaryState extends State {
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
                height: 50,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Pune",
                    style: GoogleFonts.poppins(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 99,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, -1),
                          blurRadius: 10,
                          color: Colors.black12)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 23, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Let's Find Specialist",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          const SizedBox(height: 2),
                          Text("Doctor For Your Pet!",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Image.asset(
                        "assets/veterian.png",
                        height: 90,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(245, 146, 69, 1),
                        width: 1)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    controller: _searchText,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                        hintText: "Search",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(245, 146, 69, 1),
                          size: 24,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Our Services",
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
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Veterinarypage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/vaccination.png",
                          scale: 0.9,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Vaccination",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/operation.png",
                        scale: 0.9,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Operations",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/behaviourals.png",
                        scale: 0.9,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Behaviorals",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/dentistry.png",
                        scale: 0.9,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Dentistry",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Best Specialist Nearby",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 122,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, -1),
                          blurRadius: 10,
                          color: Colors.black12)
                    ]),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorprofilePage()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/doctor.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dr. Anna Jhonson",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 3),
                            Text("Veterinary Behavioral",
                                style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600)),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_border_rounded,
                                  size: 22,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text("4.8",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600)),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Icon(
                                  Icons.location_on_outlined,
                                  size: 22,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text("1 km",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 122,
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
                    Image.asset(
                      "assets/vet_doc.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr.Vernon Chwe",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 3),
                          Text("Veterinary Surgerical",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_rounded,
                                size: 22,
                                color: Color.fromRGBO(245, 146, 69, 1),
                              ),
                              Text("4.9",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.location_on_outlined,
                                size: 22,
                                color: Color.fromRGBO(245, 146, 69, 1),
                              ),
                              Text("1.5km",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 122,
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
                    Image.asset(
                      "assets/doctor.png",
                      //scale: 0.9,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr.Vernon Chwe",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 3),
                          Text("Veterinary Surgerical",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade600)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_rounded,
                                size: 22,
                                color: Color.fromRGBO(245, 146, 69, 1),
                              ),
                              Text("4.9",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.location_on_outlined,
                                size: 22,
                                color: Color.fromRGBO(245, 146, 69, 1),
                              ),
                              Text("1.5km",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: const BtmNavigationBar(),
    );
  }
}
