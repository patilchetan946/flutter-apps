import 'package:expense_manager/category.dart';
import 'package:expense_manager/graph.dart';
import 'package:expense_manager/transaction_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Trashscreen extends StatefulWidget {
  const Trashscreen({super.key});

  @override
  State createState() => _TrashscreenState();
}

class _TrashscreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        // leading: const Icon(Icons.menu),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        color: Color.fromRGBO(204, 210, 227, 1),
                                        Icons.remove_circle_outlined),
                                    iconSize: 28,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 10),
                                            Text(
                                              'Medicine',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              height: 23,
                                              width: 40,
                                              child: Text(
                                                '500',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 30,
                                              width: 300,
                                              child: Text(
                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry... more ',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 11,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.8),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '3 June | 11:50 AM',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.6),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromRGBO(206, 206, 206, 1),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        width: 230,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
                child: Text('Expense Manager ',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 15,
                child: Text('Save all your transactions ',
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w400)),
              ),

              const SizedBox(height: 25),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionScreen()));
                },
                child: Row(children: [
                  SizedBox(
                    height: 17,
                    width: 18,
                    child: Image.asset(
                      'assets/Transaction.png',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('Transaction',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16)),
                ]),
              ),

              //2

              const SizedBox(height: 35),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GraphPage()));
                },
                child: Row(children: [
                  SizedBox(
                      height: 17,
                      width: 18,
                      child: Image.asset('assets/Graph.png')),
                  const SizedBox(width: 8),
                  Text('Graph',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16)),
                ]),
              ),

              //3

              const SizedBox(height: 35),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Categoryscreen(),
                      ));
                },
                child: Row(children: [
                  SizedBox(
                      height: 17,
                      width: 18,
                      child: Image.asset('assets/Category.png')),
                  const SizedBox(width: 8),
                  Text('Category',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16)),
                ]),
              ),

              //4

              const SizedBox(height: 35),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Trashscreen()));
                },
                child: Row(children: [
                  SizedBox(
                      height: 17,
                      width: 18,
                      child: Image.asset('assets/Trash.png')),
                  const SizedBox(width: 8),
                  Text('Trash',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16)),
                ]),
              ),
              //5
              const SizedBox(height: 35),
              Row(
                children: [
                  SizedBox(
                      height: 17,
                      width: 18,
                      child: Image.asset('assets/Aboutus.png')),
                  const SizedBox(width: 8),
                  Text('About us',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 16)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
