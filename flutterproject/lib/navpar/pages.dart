import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/navpar/about.dart';
import 'package:flutterproject/navpar/myCart.dart';
import 'package:flutterproject/navpar/profile.dart';
import 'package:flutterproject/screens/home_screen.dart';

import 'favorite.dart';


class pages extends StatefulWidget {
  const pages({Key? key}) : super(key: key);

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages= [
    profile(),
    theCart(),
    home_screen(),
    favorite(),
    about(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: pages[_selectedIndex],

        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
            height: 60.0,
          backgroundColor: Colors.grey.shade200,
          buttonBackgroundColor:Colors.indigo ,
          color: Colors.white,
          onTap: _onItemTapped,
          items: const [
            Icon(Icons.person, size: 25),
            Icon(Icons.card_travel_outlined, size: 25),
            Icon(Icons.home,size: 30),
            Icon(Icons.favorite, size: 25),
            Icon(Icons.list, size: 25),


          ],
        ),



        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_cart),
        //       label: 'Cart',
        //     ),
        //
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite),
        //       label: 'Favorite',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //     ),
        //
        //   ],
        //
        //   type: BottomNavigationBarType.shifting,
        //   currentIndex: _selectedIndex,
        //   selectedItemColor: Colors.indigo,
        //   onTap: _onItemTapped,
        //   // unselectedFontSize: 0,
        //   unselectedItemColor: Colors.black12,
        // )
    );
  }
}
