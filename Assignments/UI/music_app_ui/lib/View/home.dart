import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:music_app_ui/Controller/navigationbar.dart";
import 'package:music_app_ui/View/gallery.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/homeImg.png",
            height: 650,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 450),
                SizedBox(
                  height: 152,
                  width: 315,
                  child: Text(
                    "Dancing between The shadows     Of rhythm ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const BtmNavgtnBar();
                      }));
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 261,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 261,
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(1, 255, 46, 0),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromRGBO(255, 46, 0, 1), width: 1),
                    ),
                    child: Text(
                      "Continue with Email",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "by continuing you agree to terms\n of services and Privacy policy",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromARGB(233, 116, 113, 113)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
