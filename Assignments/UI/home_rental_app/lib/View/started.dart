import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/View/homescreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State createState() => GetStartedState();
}

class GetStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/Starting.png",
            width: double.infinity,
            height: 650,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            "Lets find your Paradise",
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1)),
          ),
          const SizedBox(height: 10),
          Text(
            "Find your perfect dream space\n          with just a few clicks",
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(101, 101, 101, 1)),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const HomeScreen();
                }));
              });
            },
            child: Container(
              height: 55,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(32, 169, 247, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
