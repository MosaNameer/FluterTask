import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/navpar/about.dart';
import 'package:flutterproject/navpar/myCart.dart';
import 'package:flutterproject/navpar/profile.dart';
import 'package:flutterproject/screens/home_screen.dart';

import 'favorite.dart';


class pages extends StatefulWidget {
   pages({Key? key}) : super(key: key);

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

        // bottomNavigationBar: CurvedNavigationBar(
        //   index: _selectedIndex,
        //     height: 60.0,
        //   backgroundColor: Colors.grey.shade200,
        //   buttonBackgroundColor:Colors.indigo ,
        //   color: Colors.white,
        //   onTap: _onItemTapped,
        //   items:  [
        //
        //     //profile icon
        //     Column(
        //        mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Icon(Icons.person_outline_rounded, size: 25),
        //       Text('profile')
        //     ],),
        //
        //     //cart icon
        //     Container(
        //       margin: const EdgeInsets.all(2),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           Icon(Icons.shopping_bag_outlined, size: 25),
        //           Text('cart')
        //         ],),
        //     ),
        //
        //     Icon(Icons.home,size: 30),
        //
        //     //favorite icon
        //     Container(
        //       margin: EdgeInsets.all(1),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           Icon(Icons.favorite_border, size: 25),
        //           Text('favorite')
        //         ],),
        //     ),
        //
        //     //about icon
        //     Container(
        //       margin: const EdgeInsets.all(2),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           Icon(Icons.error_outline, size: 25),
        //           Text('about')
        //         ],),
        //     ),
        //
        //   ],
        // ),



        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded, size: 25,color: Colors.black),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined, size: 25,color: Colors.black),
              label: 'Cart',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 40),
              activeIcon: CircleAvatar(
                backgroundColor: Colors.indigo,
                  radius: 25,
                  child: Icon(Icons.home,color: Colors.black,size: 30)),

              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 25,color: Colors.black),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.error_outline, size: 25,color: Colors.black),
              label: 'about',
            ),

          ],

          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          // unselectedFontSize: 0,
          unselectedItemColor: Colors.black12,
        )
    );
  }
}
