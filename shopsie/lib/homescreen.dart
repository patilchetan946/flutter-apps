import 'package:flutter/material.dart';
import 'package:shopsie/carddetails.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State createState() => _HomepageState();
}

class _HomepageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //----------------------------------------------------TOP HEADER--------------------------------------------------->
                  children: [
                    SizedBox(
                      width: 230,
                      height: 50,
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 245, 246, 249),
                          filled: true,
                          hintText: "Search product",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 245, 246, 249)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.trolley),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 245, 246, 249)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none),
                      ),
                    ),
                  ],
                ),
              ),
              //---------------------------------------------------- DISCOUNT BANNER -------------------------------------------->
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(74, 50, 152, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A Summer Surprise",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Cashback 20%",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //---------------------------------------------------- CATEGORIES ------------------------------------------------->
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 236, 223, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.flash_on,
                              color: Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("Flash Deal"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 236, 223, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.payments_outlined,
                              color: Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("Bill"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 236, 223, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.gamepad_outlined,
                              color: Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("Game"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 236, 223, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.card_giftcard_outlined,
                              color: Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("Daily Gift"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 236, 223, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_outlined,
                              color: Color.fromARGB(255, 255, 112, 56),
                              size: 30,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("More"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //---------------------------------------------------- SPECIAL DEALS ---------------------------------------------->
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20, left: 8),
                child: Text(
                  "Special for you",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 242,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:
                                const AssetImage("assets/Image Banner 2.png"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.3),
                                BlendMode.darken),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "Smartphone",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 242,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:
                                const AssetImage("assets/Image Banner 3.png"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.3),
                                BlendMode.darken),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "Fashion",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //---------------------------------------------------- POPULAR PRODUCTS ------------------------------------------->
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20, left: 8),
                child: Text(
                  "Popular Product",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 246, 249),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const CardDetails();
                                }),
                              );
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Image.asset(
                                "assets/Image Popular Product 1.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 246, 249),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Image.asset(
                                "assets/Image Popular Product 2.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 246, 249),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Image.asset(
                                "assets/Image Popular Product 3.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
