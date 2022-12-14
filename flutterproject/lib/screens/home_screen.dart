import 'package:flutter/material.dart';
import 'package:flutterproject/lists/cart_list.dart';
import 'package:flutterproject/screens/deatils/details_screen2.dart';
import 'package:flutterproject/widgets/cart.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          " Fitness App ",
                  style: TextStyle(fontSize: 35 , color: Colors.white,
                    fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w900),),
      ),
      body: SafeArea(
       // bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [

                  Container(
                  //  margin:const EdgeInsets.only(top: 140.0),
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                        const Padding(
                           padding: EdgeInsets.only(
                               top: 25,
                               left: 10
                           ),
                          child:Text('Popular trainers',
                            style: TextStyle(fontSize: 23 , color: Colors.black,
                              fontFamily: 'JosefinSans-Italic',


                          ),) ,
                           ),
                        
                       Container(
                             margin: EdgeInsets.only(top: 60.0,left: 20,right: 20),
                             child:
                             ListView.builder(
                               itemCount: 3,
                               itemBuilder:  (context, index) => mycart(
                               key:  Key(''),
                               cart: cart_lists[index],
                               cart2: cart_list2[index],


                               ),
                       ),
                       ),
                ],),
            ),
          ],),
      ),
    );
  }
}
