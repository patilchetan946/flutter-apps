import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/View/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State createState() => SplashState();
}

class SplashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(87, 50, 191, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 400),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 180,
                  ),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(253, 194, 40, 1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(253, 194, 40, 1),
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Login();
                  }));
                });
              },
              child: Text(
                "Tap'nPay",
                style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
