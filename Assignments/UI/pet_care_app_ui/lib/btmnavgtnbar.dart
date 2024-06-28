import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_care_app_ui/dashboard.dart';
import 'package:pet_care_app_ui/shopPage.dart';
import 'package:pet_care_app_ui/veterinaryPage.dart';

class BtmNavigationBar extends StatefulWidget {
  const BtmNavigationBar({super.key});

  @override
  State<BtmNavigationBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BtmNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    const Dashboard(),
    const Veterinarypage(),
    const Shoppage(),
    const Dashboard(),
    const Dashboard(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Iconsax.house_2, 'Home', 0),
            buildNavBarItem(Icons.favorite_border, 'Service', 1),
            // buildNavBarItem(Icons.shopping_cart, 'cart', 2),

            //const SizedBox(width: 0),
            buildNavBarItem(Icons.watch_later_outlined, 'History', 3),
            buildNavBarItem(Icons.person_3_outlined, 'Profile', 4),
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: Material(
          color: const Color.fromRGBO(245, 146, 69, 1),
          elevation: 10,
          child: InkWell(
            onTap: () {
              _onItemTapped(2);
            },
            child: SizedBox(
              width: 56,
              height: 56,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 22,
                      color: Colors.white,
                    ),
                    Text(
                      "Shop",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index
                ? const Color.fromRGBO(245, 146, 69, 1)
                : Colors.black87,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index
                  ? const Color.fromRGBO(245, 146, 69, 1)
                  : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
