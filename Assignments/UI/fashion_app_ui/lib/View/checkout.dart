import 'package:fashion_app_ui/View/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  State createState() => CheckoutState();
}

class CheckoutState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const Cart();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.imprima(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color.fromRGBO(13, 13, 14, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery Address",
              style: GoogleFonts.imprima(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color.fromRGBO(121, 119, 128, 1),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/Rectangle 121.png"),
                ),
                const SizedBox(width: 10),
                Text(
                  "25/3 Housing Estate, \nylhet",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const Spacer(),
                Text(
                  "Change",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Icon(Icons.alarm),
                const SizedBox(width: 8),
                Text(
                  "Delivered in next 7 days",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Payment Method",
              style: GoogleFonts.imprima(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color.fromRGBO(121, 119, 128, 1),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/Group 17305.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Container(
              height: 54,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Add Voucher",
                style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Note:",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
                Text(
                  " Use your order id at the payment. Your Id   ",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#154619 if you forget to put your order id we",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "can’t confirm the payment.",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Column(
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
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 90),
              child: Container(
                  height: 62,
                  width: 190,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "Pay Now",
                    style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
