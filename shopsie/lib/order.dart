import 'package:flutter/material.dart';
import 'package:shopsie/bottomnavigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shopsie/main.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State createState() => _OrderState();
}

class _OrderState extends State {
  //--------------------------------INSERT METHOD-------------------------------------->
  void insertdata() async {
    await getdata();
    print(await getdata());

    setState(() {});
  }

//--------------------------------DELETE METHOD--------------------------------------->
  void deletedata() async {
    obj2.clear();
    await getdata();
    setState(() {});
  }

  void editTask(CartModelclass cartModelObj) {
    nameController.text = cartModelObj.name;
    addressController.text = cartModelObj.address;
    phoneController.text = cartModelObj.phone;

    showBottomSht(true, cartModelObj);
  }

  clearController() {
    nameController.clear();
    addressController.clear();
    phoneController.clear();
  }

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  void submit([CartModelclass? cartModelclassobj]) {
    if (nameController.text.trim().isNotEmpty &&
        addressController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty) {
      setState(() {
        cartModelclassobj!.phone = phoneController.text.trim();
        cartModelclassobj.name = nameController.text.trim();
        cartModelclassobj.address = addressController.text.trim();

        updateOrderData(cartModelclassobj);
      });

      clearController();
    }
  }

  final _formKey = GlobalKey<FormState>();

  Future<void> showBottomSht(bool doEdit,
      [CartModelclass? todoModelObj]) async {
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
                    submit(todoModelObj);
                  },
                  child: Text(
                    "Update Details",
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
      backgroundColor: const Color.fromARGB(255, 255, 112, 56),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 112, 56),
        centerTitle: true,
        title: const Text(
          "ORDERS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const BtmNavgtnBar();
                }));
              });
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: obj2.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Slidable(
                closeOnScroll: true,
                endActionPane: ActionPane(
                  extentRatio: 0.2,
                  motion: const DrawerMotion(),
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  editTask(obj2[index]);
                                });
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 112, 56),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await deleteOrderData(obj2[index].orderNo!);

                              setState(() {
                                print(obj2[index].orderNo!);
                                deletedata();
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 112, 56),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                key: ValueKey(index),
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 0.05),
                      width: 0.5,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.13),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.zero),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(217, 217, 217, 1),
                            ),
                            child: Image.asset(
                              "assets/ps4_console_white_1.png",
                              height: 10,
                              width: 10,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 260,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  obj2[index].name,
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  obj2[index].address,
                                  style: GoogleFonts.inter(
                                    color: const Color.fromRGBO(0, 0, 0, 0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  obj2[index].phone,
                                  style: GoogleFonts.inter(
                                    color: const Color.fromRGBO(0, 0, 0, 0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            activeColor: Colors.green,
                            value: true,
                            onChanged: (val) {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
