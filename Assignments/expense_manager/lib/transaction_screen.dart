import 'package:expense_manager/category.dart';
import 'package:expense_manager/graph.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State createState() => _RegistrationState();
}

class _RegistrationState extends State {
  void showBottomSheet() {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        context: context,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.date_range_rounded,
                              color: Color.fromRGBO(14, 161, 125, 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                //color: Color.fromRGBO(0, 139, 148, 1),
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Date",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2030),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        colorScheme: ColorScheme.fromSwatch(
                                      primarySwatch: Colors.green,
                                      // accentColor: Colors.purple,
                                      //backgroundColor: Colors.lightBlue,
                                      cardColor: Colors.white,
                                    )),
                                    child: child!,
                                  );
                                });
                            String formatedDate =
                                DateFormat.yMMMd().format(pickeddate!);
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Amount",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                //color: Color.fromRGBO(0, 139, 148, 1),
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Amount",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Category",
                        style: GoogleFonts.quicksand(
                          //color: const Color.fromRGBO(0, 139, 148, 1),
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                //color: Color.fromRGBO(0, 139, 148, 1),
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Category",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                //color: Color.fromRGBO(0, 139, 148, 1),
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(14, 161, 125, 1),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Description",
                            hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 40,
                    width: 123,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 4,
                          color: Color.fromRGBO(0, 0, 0, 0.2))
                    ], borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Add",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 24,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 58,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/medical.png',
                            height: 41,
                            width: 41,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      'Medicine',
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.remove_circle,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      height: 23,
                                      width: 40,
                                      child: Text(
                                        '500',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                      width: 251,
                                      child: Text(
                                        'Lorem Ipsum is simply dummy text of the ',
                                        style: GoogleFonts.poppins(
                                            fontSize: 11,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '3 June | 11:50 AM',
                                      style: GoogleFonts.poppins(
                                          fontSize: 11,
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.6),
                                          fontWeight: FontWeight.w400),
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
      floatingActionButton: SizedBox(
        height: 46,
        width: 166,
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              showBottomSheet();
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          label: Row(
            children: [
              Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(14, 161, 125, 1)),
                  child: const Icon(
                    Icons.add,
                    size: 33,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
              const SizedBox(width: 5),
              Text(
                " Add Transaction",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(37, 37, 37, 1)),
              )
            ],
          ),
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
                          builder: (context) => const TransactionScreen()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GraphPage()));
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
                        builder: (context) => const Categoryscreen(),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Trashscreen()));
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
