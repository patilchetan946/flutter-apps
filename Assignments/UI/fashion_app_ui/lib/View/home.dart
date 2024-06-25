import 'package:fashion_app_ui/View/details.dart';
import "package:flutter/material.dart";
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Iconsax.element_3,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  Iconsax.mirror,
                  size: 30,
                  weight: 2,
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Explore",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: const Color.fromRGBO(13, 13, 14, 1)),
            ),
            Text(
              "Best trendy collection!",
              style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(255, 122, 0, 1),
                  ),
                  child: Text(
                    "All",
                    style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                Text(
                  "Men",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                Text(
                  "Women",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                Text(
                  "Kids",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
                Text(
                  "Other",
                  style: GoogleFonts.imprima(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 275,
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return const Details();
                                  }));
                                },
                                child: Container(
                                  height: 214,
                                  width: 170,
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                    "assets/homeimg1.png",
                                    height: 204,
                                    width: 170,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 180, left: 100),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      stops: [0.7, 0.3],
                                      colors: [Colors.black, Colors.white],
                                    ),
                                  ),
                                  child: const Icon(
                                    Iconsax.bag_2,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 200,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      r"$240.32",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color:
                                            const Color.fromRGBO(13, 13, 14, 1),
                                      ),
                                    ),
                                    Text(
                                      "Tagerine Shirt",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 210,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 150,
                                width: 160,
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/homeimg3.png",
                                  height: 204,
                                  width: 170,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 125, left: 95),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      stops: [0.7, 0.3],
                                      colors: [Colors.black, Colors.white],
                                    ),
                                  ),
                                  child: const Icon(
                                    Iconsax.bag_2,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 145,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      r"$126.47",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color:
                                            const Color.fromRGBO(13, 13, 14, 1),
                                      ),
                                    ),
                                    Text(
                                      "Tagerine Shirt",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(
                      height: 210,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 150,
                                width: 160,
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/homeimg2.png",
                                  height: 204,
                                  width: 170,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 125, left: 95),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      stops: [0.7, 0.3],
                                      colors: [Colors.black, Colors.white],
                                    ),
                                  ),
                                  child: const Icon(
                                    Iconsax.bag_2,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 145,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      r"$325.36",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color:
                                            const Color.fromRGBO(13, 13, 14, 1),
                                      ),
                                    ),
                                    Text(
                                      "Leather Coat",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 265,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 204,
                                width: 160,
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/homeimg4.png",
                                  height: 204,
                                  width: 170,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 180, left: 100),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      stops: [0.7, 0.3],
                                      colors: [Colors.black, Colors.white],
                                    ),
                                  ),
                                  child: const Icon(
                                    Iconsax.bag_2,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 200,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      r"$257.85",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color:
                                            const Color.fromRGBO(13, 13, 14, 1),
                                      ),
                                    ),
                                    Text(
                                      "Leather Coat",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Stack(
            //           children: [
            //             Container(
            //               height: 220,
            //               width: 170,
            //               alignment: Alignment.topCenter,
            //               child: Image.asset(
            //                 "assets/homeimg1.png",
            //                 height: 204,
            //                 width: 170,
            //               ),
            //             ),
            //             Positioned(
            //               bottom: 0,
            //               right: 22,
            //               child: Container(
            //                 height: 36,
            //                 width: 36,
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   gradient: RadialGradient(
            //                     stops: [0.7, 0.3],
            //                     colors: [Colors.black, Colors.white],
            //                   ),
            //                 ),
            //                 child: const Icon(
            //                   Iconsax.bag2,
            //                   size: 15,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Text(
            //           r"$240.32",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(13, 13, 14, 1),
            //           ),
            //         ),
            //         Text(
            //           "Tagerine Shirt",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(121, 119, 128, 1),
            //           ),
            //         ),
            //         const SizedBox(height: 15),
            //         Stack(
            //           children: [
            //             Container(
            //               height: 170,
            //               width: 160,
            //               alignment: Alignment.topCenter,
            //               child: Image.asset(
            //                 "assets/homeimg3.png",
            //                 height: 140,
            //                 width: 160,
            //               ),
            //             ),
            //             Positioned(
            //               bottom: 0,
            //               right: 18,
            //               child: Container(
            //                 height: 36,
            //                 width: 36,
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   gradient: RadialGradient(
            //                     stops: [0.7, 0.3],
            //                     colors: [Colors.black, Colors.white],
            //                   ),
            //                 ),
            //                 child: const Icon(
            //                   Iconsax.bag2,
            //                   size: 15,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Text(
            //           r"$126.47",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(13, 13, 14, 1),
            //           ),
            //         ),
            //         Text(
            //           "Tagerine Shirt",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(121, 119, 128, 1),
            //           ),
            //         ),
            //       ],
            //     ),
            //     const SizedBox(width: 10),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Stack(
            //           children: [
            //             Container(
            //               height: 170,
            //               width: 160,
            //               alignment: Alignment.topCenter,
            //               child: Image.asset(
            //                 "assets/homeimg2.png",
            //                 height: 194,
            //                 width: 160,
            //               ),
            //             ),
            //             Positioned(
            //               bottom: 0,
            //               right: 18,
            //               child: Container(
            //                 height: 36,
            //                 width: 36,
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   gradient: RadialGradient(
            //                     stops: [0.7, 0.3],
            //                     colors: [Colors.black, Colors.white],
            //                   ),
            //                 ),
            //                 child: const Icon(
            //                   Iconsax.bag2,
            //                   size: 15,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Text(
            //           r"$325.26",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(13, 13, 14, 1),
            //           ),
            //         ),
            //         Text(
            //           "Leather Coat",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(121, 119, 128, 1),
            //           ),
            //         ),
            //         const SizedBox(height: 10),
            //         Stack(
            //           children: [
            //             Container(
            //               height: 220,
            //               width: 160,
            //               alignment: Alignment.topCenter,
            //               child: Image.asset(
            //                 "assets/homeimg4.png",
            //                 height: 204,
            //                 width: 160,
            //               ),
            //             ),
            //             Positioned(
            //               bottom: 0,
            //               right: 18,
            //               child: Container(
            //                 height: 36,
            //                 width: 36,
            //                 decoration: const BoxDecoration(
            //                   shape: BoxShape.circle,
            //                   gradient: RadialGradient(
            //                     stops: [0.7, 0.3],
            //                     colors: [Colors.black, Colors.white],
            //                   ),
            //                 ),
            //                 child: const Icon(
            //                   Iconsax.bag2,
            //                   size: 15,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Text(
            //           r"$257.85",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(13, 13, 14, 1),
            //           ),
            //         ),
            //         Text(
            //           "Leather Coat",
            //           style: GoogleFonts.imprima(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 18,
            //             color: const Color.fromRGBO(121, 119, 128, 1),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
