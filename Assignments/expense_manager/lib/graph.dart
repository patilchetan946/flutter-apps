import 'package:expense_manager/category.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/transaction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  Map<String, double> data = {
    "Food": 20,
    "Fuel": 30,
    "Medicine": 10,
    "Entertainment": 50,
    "Shopping": 15
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                PieChart(
                  dataMap: data,
                  chartType: ChartType.ring,
                  chartRadius: 150,
                  ringStrokeWidth: 30,
                  baseChartColor: Colors.white,
                  centerText: "Total\n₹ 2550.00",
                  centerTextStyle: GoogleFonts.poppins(
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  emptyColor: Colors.white,
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Divider(),
                SizedBox(
                  height: 370,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          margin: const EdgeInsets.all(17),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    "assets/Food.png",
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Food",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "₹ 650.00",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 10,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    Text(
                      "₹ 2,550.00",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
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
