import 'package:flutter/material.dart';
import 'package:shopsie/bottomnavigationbar.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State createState() => _SuccessState();
}

class _SuccessState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Transaction Status",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 60),
          Image.asset("assets/success.png"),
          const SizedBox(height: 100),
          const Text(
            "Order Success",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const Text(
            "Your packet will be sent to your \n      address, thanks for order!",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const BtmNavgtnBar();
              }));
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 112, 56),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: const Text(
                "Back to home",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
