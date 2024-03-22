import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopsie/bottomnavigationbar.dart';
import 'package:shopsie/success.dart';
import 'package:shopsie/main.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State createState() => _CardDetailsState();
}

class _CardDetailsState extends State {
  bool _rating = false;
  bool brdrclr1 = false;
  bool brdrclr2 = false;
  bool brdrclr3 = false;
  bool brdrclr4 = false;
  bool _isFavourite = false;
  int _selectedImage = 0;
  int count = 1;
  List imglist = [
    "assets/ps4_console_white_1.png",
    "assets/ps4_console_white_2.png",
    "assets/ps4_console_white_3.png",
    "assets/ps4_console_white_4.png",
  ];
//-----------------------------------------------------------------INSERT METHOD------------------------------------------------------>
  void insertdata() async {
    obj1.clear();
    await getdata();
    print(await getdata());

    setState(() {});
  }

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  void submit() {
    if (nameController.text.trim().isNotEmpty &&
        addressController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty) {
      CartModelclass obj = CartModelclass(
          name: nameController.text.trim(),
          address: addressController.text.trim(),
          phone: phoneController.text.trim());
      insertOrderData(obj);
      insertdata();
      setState(() {});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Success();
      }));
      clearController();
    }
  }

  clearController() {
    nameController.clear();
    addressController.clear();
    phoneController.clear();
  }

  final _formKey = GlobalKey<FormState>();

  Future<void> showBottomSht() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Details",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromARGB(255, 255, 112, 56),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 112, 56),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Address",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromARGB(255, 255, 112, 56),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: addressController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "Enter Address",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 112, 56),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Phone No.",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromARGB(255, 255, 112, 56),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter Number",
                        suffixIcon: const Icon(Icons.phone_android_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 112, 56),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 112, 56),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    submit();
                  },
                  child: Text(
                    "Place Order",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 236),
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return const BtmNavgtnBar();
                }),
              );
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(4),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.only(top: 2, bottom: 2, left: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "4.7",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _rating = !_rating;
                    });
                  },
                  icon: Icon(_rating ? Icons.star : Icons.star_border_outlined,
                      color: Colors.amber),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Container(
            height: 340,
            color: const Color.fromARGB(255, 234, 234, 236),
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(imglist[_selectedImage], height: 250, width: 250),
                //how to use listview.builder here to make the containers and fetch images from list ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 44),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedImage = 0;
                          brdrclr1 = true;
                          brdrclr2 = false;
                          brdrclr3 = false;
                          brdrclr4 = false;
                        });
                      },

                      // Here Multiple flags has been taken to display the individual border around containers when tap n it.
                      // To show the image in backaground on tap images has been fetched from the list and the imdex has been set on tap.
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(right: 16),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: brdrclr1
                                  ? const Color.fromARGB(255, 255, 112, 56)
                                  : Colors.white),
                        ),
                        child: Image.asset(
                          imglist[0],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedImage = 1;
                          brdrclr1 = false;
                          brdrclr2 = true;
                          brdrclr3 = false;
                          brdrclr4 = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(right: 16),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: brdrclr2
                                  ? const Color.fromARGB(255, 255, 112, 56)
                                  : Colors.white),
                        ),
                        child: Image.asset(
                          imglist[1],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedImage = 2;
                          brdrclr1 = false;
                          brdrclr2 = false;
                          brdrclr3 = true;
                          brdrclr4 = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(right: 16),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: brdrclr3
                                  ? const Color.fromARGB(255, 255, 112, 56)
                                  : Colors.white),
                        ),
                        child: Image.asset(
                          imglist[2],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedImage = 3;
                          brdrclr1 = false;
                          brdrclr2 = false;
                          brdrclr3 = false;
                          brdrclr4 = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(right: 16),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: brdrclr4
                                  ? const Color.fromARGB(255, 255, 112, 56)
                                  : Colors.white),
                        ),
                        child: Image.asset(
                          imglist[3],
                        ),
                      ),
                    ),
                    const SizedBox(width: 44),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Wireless Controller for PS4",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Rs 2000/-",
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: const Color.fromARGB(255, 255, 112, 56),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.red.shade100,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isFavourite = !_isFavourite;
                                  });
                                },
                                icon: Icon(
                                  _isFavourite
                                      ? Icons.favorite
                                      : Icons.favorite_border_rounded,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: Text(
                            "Wireless Controller PS4 gives you what you want in your from over precision control your games to sharing …",
                            style: GoogleFonts.quicksand(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Text(
                                "See More Detail",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 255, 112, 56),
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Color.fromARGB(255, 255, 112, 56),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color.fromARGB(255, 234, 234, 236),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 112, 56),
                                  width: 2)),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ),
                        Text(
                          "$count",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (count == 0) {
                                return;
                              } else {
                                count--;
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () async {
                            await showBottomSht();
                            clearController();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 270,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 112, 56),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
