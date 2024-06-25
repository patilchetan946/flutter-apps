import 'package:fashion_app_ui/Controller/navigation.dart';
import 'package:fashion_app_ui/View/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});
  @override
  State createState() => DetailsState();
}

class DetailsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const BottomNavigationBarExample();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: Text(
          "Details",
          style: GoogleFonts.imprima(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color.fromRGBO(13, 13, 14, 1),
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.bookmark_border),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 450,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(
                "assets/detlImg.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Premium \nTagerine Shirt",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/Ellipse 14.png"),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/Ellipse 15.png"),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/Ellipse 16.png"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Size",
              style: GoogleFonts.imprima(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: const Color.fromRGBO(13, 13, 14, 1),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "S",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "M",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Container(
                  height: 44,
                  width: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "L",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "XL",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "XXL",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  r"$257.85",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Cart();
                    }));
                  },
                  child: Container(
                    height: 62,
                    width: 162,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromRGBO(255, 122, 0, 1)),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
