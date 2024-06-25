// import 'package:fashion_app_ui/View/home.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class BtmNavgtnBar extends StatefulWidget {
//   const BtmNavgtnBar({super.key});
//   @override
//   State createState() => _BtmNavgtnBarState();
// }

// class _BtmNavgtnBarState extends State {
//   int _selectedIndex = 0;

//   final List<Widget> _widgetOptions = <Widget>[
//     const Home(),
//     const Home(),
//     const Home(),
//     const Home(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 0,
//         currentIndex: _selectedIndex,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             backgroundColor: Colors.white,
//             icon: Icon(
//               Iconsax.home_1,
//               color: Colors.black,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.search_normal_1, color: Colors.black),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.bag, color: Colors.black),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.setting, color: Colors.black),
//             label: 'Settings',
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         selectedIconTheme: const IconThemeData(
//           color: Color.fromRGBO(230, 154, 21, 1),
//         ),
//         selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
//       ),
//       body: _widgetOptions.elementAt(_selectedIndex),
//     );
//   }
// }

import 'package:fashion_app_ui/View/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home_1,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.search_normal_1,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.bag_2,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.setting,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
