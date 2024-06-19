import 'package:flutter/material.dart';
import 'package:music_app_ui/View/gallery.dart';
import 'package:music_app_ui/View/player.dart';
import 'package:iconsax/iconsax.dart';

class BtmNavgtnBar extends StatefulWidget {
  const BtmNavgtnBar({super.key});
  @override
  State createState() => _BtmNavgtnBarState();
}

class _BtmNavgtnBarState extends State {
  int _selectedIndex = 4;

  final List<Widget> _widgetOptions = <Widget>[
    const Player(),
    const Gallery(),
    const Gallery(),
    const Gallery(),
    const Gallery(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(24, 24, 24, 1),
            icon: Icon(
              Iconsax.heart,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Favroite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.search_normal_1,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home, color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.bag, color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user, color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedIconTheme: const IconThemeData(
          color: Color.fromRGBO(230, 154, 21, 1),
        ),
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
