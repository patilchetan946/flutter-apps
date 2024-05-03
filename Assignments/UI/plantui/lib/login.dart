import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantui/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset("assets/rings.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Text(
                  "Log in",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Container(
              height: 55,
              //width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromRGBO(204, 211, 196, 1), width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.06),
                    blurRadius: 20,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.local_phone_outlined,
                      size: 20,
                      color: Color.fromRGBO(164, 164, 164, 1),
                    ),
                    hintText: 'Mobile Number',
                    hintStyle: GoogleFonts.inter(
                        color: const Color.fromRGBO(164, 164, 164, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    iconColor: const Color.fromRGBO(204, 211, 196, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Verification()));
                  },
                  child: Container(
                    width: 380,
                    height: 55,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 40,
                            color: Color.fromRGBO(0, 0, 0, 0.15))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(62, 102, 24, 1),
                          Color.fromRGBO(124, 180, 70, 1),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const Spacer(),
            const SizedBox(height: 60),
            SizedBox(
              child: Image.asset(
                "assets/plant2.png",
                scale: 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
