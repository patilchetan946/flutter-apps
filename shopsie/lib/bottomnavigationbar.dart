import 'package:flutter/material.dart';
import 'package:shopsie/Messages.dart';
import 'package:shopsie/favroite.dart';
import 'package:shopsie/homescreen.dart';
import 'package:shopsie/profile.dart';

class BtmNavgtnBar extends StatefulWidget {
  const BtmNavgtnBar({super.key});
  @override
  State createState() => _BtmNavgtnBarState();
}

class _BtmNavgtnBarState extends State {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    const Favourite(),
    const Msg(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_outlined,
              color: Color.fromARGB(255, 255, 112, 56),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 255, 112, 56),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline,
                color: Color.fromARGB(255, 255, 112, 56)),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined,
                color: Color.fromARGB(255, 255, 112, 56)),
            label: '.',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.amber[800],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
