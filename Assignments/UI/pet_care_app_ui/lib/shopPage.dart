import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State createState() => _ShoppageState();
}

class _ShoppageState extends State {
  final TextEditingController _searchText = TextEditingController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 80),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Hello Chetan,",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const SizedBox(height: 2),
                                Text("Find your lovable Pets",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                const SizedBox(height: 20)
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45, top: 160),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: const Color.fromRGBO(252, 219, 193, 1),
                          width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: TextField(
                      controller: _searchText,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          hintText: "Search Something Here..",
                          suffixIcon: Icon(
                            Icons.search_rounded,
                            color: Color.fromRGBO(252, 167, 69, 1),
                            size: 24,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop1.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Pets",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 8),
                        Stack(children: [
                          Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop3.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Healthy",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 8),
                        Stack(children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop5.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Accessories",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Stack(children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop2.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Foods",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 8),
                        Stack(children: [
                          Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop4.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Toys",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 8),
                        Stack(children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(18),
                                image: const DecorationImage(
                                    image: AssetImage("assets/shop6.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 30,
                              width: 110,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 247, 1),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Text(
                                "Clothes",
                                style: GoogleFonts.poppins(
                                    backgroundColor: Colors.white,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: const BtmNavigationBar(),
    );
  }
}
