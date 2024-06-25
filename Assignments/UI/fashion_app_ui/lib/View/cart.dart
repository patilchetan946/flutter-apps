import 'package:fashion_app_ui/View/checkout.dart';
import 'package:fashion_app_ui/View/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State createState() => CartState();
}

class CartState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const Details();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: Text(
          "Cart",
          style: GoogleFonts.imprima(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color.fromRGBO(13, 13, 14, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "My Orders",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      "assets/homeimg1.png",
                      height: 142,
                      width: 108,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Premium \nTagerine Shirt",
                          style: GoogleFonts.imprima(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color.fromRGBO(13, 13, 14, 1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Yellow \nSize 8",
                          style: GoogleFonts.imprima(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color.fromRGBO(121, 119, 128, 1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              r"$257.85",
                              style: GoogleFonts.imprima(
                                fontWeight: FontWeight.w600,
                                fontSize: 26,
                                color: const Color.fromRGBO(13, 13, 14, 1),
                              ),
                            ),
                            const SizedBox(width: 110),
                            Text(
                              r"1x",
                              style: GoogleFonts.imprima(
                                fontWeight: FontWeight.w500,
                                fontSize: 34,
                                color: const Color.fromRGBO(13, 13, 14, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/cartimg.png"),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leather \nTagerine Coat",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Yellow \nSize 8",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        r"$257.85",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w600,
                          fontSize: 26,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                      const SizedBox(width: 80),
                      Text(
                        r"1x",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w500,
                          fontSize: 34,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 55,
                width: 92,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Color.fromRGBO(255, 122, 0, 1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Color.fromRGBO(227, 227, 227, 1),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Total Items (3)",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      r"$116.00",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Standard Delivery",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      r"$12.00",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Total Payment",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      r"$126.00",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 110),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Checkout();
                }));
              },
              child: Container(
                  height: 62,
                  width: 190,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Checkout Now",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
