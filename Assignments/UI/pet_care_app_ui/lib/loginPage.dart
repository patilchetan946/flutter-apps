import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app_ui/btmnavgtnbar.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State createState() => _LoginpageState();
}

class _LoginpageState extends State {
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool flag = true;

  bool passwordFun() {
    return flag;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(245, 146, 69, 1),
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                  Image.asset("assets/logo1.png"),
                  const SizedBox(height: 40),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: TextField(
                        controller: _mail,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                          hintText: "Email Id",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: TextField(
                        controller: _password,
                        obscureText: passwordFun(),
                        decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    flag = !flag;
                                  });
                                },
                                icon: flag
                                    ? const Icon(
                                        Icons.remove_red_eye_rounded,
                                        color: Color.fromRGBO(245, 146, 69, 1),
                                      )
                                    : const Icon(
                                        Icons.remove_red_eye_outlined,
                                        color: Color.fromRGBO(245, 146, 69, 1),
                                      )),
                            hintText: "Password",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forget Password ? ",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      Text(
                        "Click Here",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
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
                      height: 40,
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 146, 69, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    indent: 12,
                    endIndent: 12,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "LOGIN WITH EMAIL",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "LOGIN WITH FACEBOOK",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By continue you agree to our",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      Text(
                        "Terms & Privacy Policy",
                        style: GoogleFonts.poppins(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
