import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            IconlyBold.home,
            color: Colors.blue[800],
            size: 25,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            IconlyBold.heart,
            color: Color.fromRGBO(98, 98, 98, 1),
            size: 25,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            IconlyBold.location,
            color: Color.fromRGBO(98, 98, 98, 1),
            size: 25,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            IconlyBold.setting,
            color: Color.fromRGBO(98, 98, 98, 1),
            size: 25,
          ),
          label: '',
        ),
      ]
    );
  }
}