import 'package:fashion_app_ui/Controller/navigation.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Onborading extends StatefulWidget {
  const Onborading({super.key});

  @override
  State createState() => OnboradingState();
}

class OnboradingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            height: 520,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Image.asset("assets/onboradImg.png", fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find The \nBest Collections",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w700,
                    fontSize: 42,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                Text(
                  "Get your dream item easily with FashionHub \nand get other intersting offer",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const BottomNavigationBarExample();
                        }));
                      },
                      child: Container(
                        height: 58,
                        width: 152,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: const Color.fromRGBO(13, 13, 14, 1),
                              width: 2),
                        ),
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.imprima(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color.fromRGBO(13, 13, 14, 1)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 58,
                      width: 152,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 122, 0, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
