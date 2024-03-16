import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Msg extends StatefulWidget {
  const Msg({super.key});

  @override
  State createState() => _MsgState();
}

class _MsgState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Messages",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Slidable(
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
                          setState(() {});
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
                        onTap: () {},
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
              margin: const EdgeInsets.only(
                  top: 10, bottom: 1, left: 10, right: 10),
              padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 246, 249),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.05),
                    width: 0.5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 20,
                      color: Color.fromRGBO(46, 46, 46, 0.467),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
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
                          color: Color.fromARGB(255, 255, 112, 56),
                        ),
                        child: Image.asset("assets/wireless headset.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Product on the way",
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
                              "Have a look at this latest Product",
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
                              "12 hours ago",
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
          );
        },
      ),
    );
  }
}
