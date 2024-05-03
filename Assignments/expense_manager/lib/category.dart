import 'package:expense_manager/graph.dart';
import 'package:expense_manager/transaction_screen.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  Future<dynamic> showmyDialog() async {
    return await showDialog(
      context: context,
      barrierColor: Colors.black54,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: SizedBox(
            height: 24,
            width: 131,
            child: Text(
              "Delete Category",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          titlePadding: const EdgeInsets.only(
            left: 80,
            top: 30,
          ),
          content: const SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Are you sure you want to delete the',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'selected category?',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: <Widget>[
            Container(
              height: 35,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(14, 161, 125, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () => Navigator.pop(context, 'Delete'),
                child: Text('Delete',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            Container(
              height: 35,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(140, 128, 128, 0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: Text('Cancel',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
            )
          ],
        );
      },
    );
  }

  TextEditingController imageurl = TextEditingController();
  TextEditingController category = TextEditingController();

  void showbottomsheet() {
    showModalBottomSheet(
        scrollControlDisabledMaxHeightRatio: 2,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),
                    Container(
                        width: double.infinity,
                        height: 74,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(140, 128, 128, 0.2),
                            shape: BoxShape.circle),
                        child: Image.asset('assets/img.png')),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Add',
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Imageurl ",
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(33, 33, 33, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 13)),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: imageurl,
                        decoration: InputDecoration(
                          hintText: 'Enter URL',
                          hintStyle: GoogleFonts.poppins(
                              color: const Color.fromRGBO(33, 33, 33, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide()),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Category ",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w400, fontSize: 13)),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: imageurl,
                        decoration: InputDecoration(
                          hintText: ' Enter Category Name',
                          hintStyle: GoogleFonts.poppins(
                              color: const Color.fromRGBO(33, 33, 33, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide()),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: GestureDetector(
                          child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 123,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Text(
                          "Add",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      )),
                    ),
                    const SizedBox(height: 25)
                  ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //count of items in number 2
          mainAxisSpacing: 25, // spacing rows
          crossAxisSpacing: 25, // spacing columns
        ),
        padding: const EdgeInsets.all(25), // padding around the grid
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showmyDialog();
            },
            child: Container(
              height: 150,
              width: 145,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(1, 2),
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    // onTap: () {
                    //   showmyDialog();
                    // },
                    child: Image.asset("assets/Food.png"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Food",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),

      // floating action buttoon
      floatingActionButton: SizedBox(
        height: 46,
        width: 166,
        child: FloatingActionButton.extended(
          onPressed: () {
            showbottomsheet();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          label: Row(
            children: [
              const Icon(
                Icons.add_circle_rounded,
                size: 40,
                color: Color.fromRGBO(14, 161, 125, 1),
              ),
              Text(
                " Add Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color.fromRGBO(37, 37, 37, 1)),
              ),
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
