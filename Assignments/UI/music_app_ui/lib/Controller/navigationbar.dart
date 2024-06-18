import 'package:flutter/material.dart';
import 'package:music_app_ui/View/gallery.dart';

class BtmNavgtnBar extends StatefulWidget {
  const BtmNavgtnBar({super.key});
  @override
  State createState() => _BtmNavgtnBarState();
}

class _BtmNavgtnBarState extends State {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Gallery(),
    const Gallery(),
    const Gallery(),
    const Gallery(),
    const Gallery(),
    // const Search(),
    // const Home(),
    // const Cart(),
    // const Profile(),
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
              Icons.favorite_border,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Favroite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
                color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,
                color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(157, 178, 206, 1)),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
