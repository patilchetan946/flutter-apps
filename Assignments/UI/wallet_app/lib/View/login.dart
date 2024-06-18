import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State createState() => LoginState();
}

class LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 420,
          width: double.infinity,
          color: const Color.fromRGBO(247, 244, 255, 1),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(253, 194, 40, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(253, 194, 40, 1),
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
                Text(
                  "Tap'nPay",
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(87, 50, 191, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 50),
                Image.asset("assets/mobile.png")
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Enter your \nmobile number",
            style: GoogleFonts.sora(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 25, 25, 1)),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Mobile number",
            style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(25, 25, 25, 1)),
          ),
        ),
        TextFormField()
      ],
    ));
  }
}
