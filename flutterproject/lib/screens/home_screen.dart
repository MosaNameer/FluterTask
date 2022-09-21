import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/cart.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  backgroundColor: Colors.white,
      body: SafeArea(
       // bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      alignment: Alignment.topLeft,
                      decoration:const BoxDecoration(

                      color: Colors.indigo,
                      ),
                      child: Column(
                        children:   const [
                          Padding(padding: EdgeInsets.only(top: 18)),
                          Text(" Fitness   ",
                          style: TextStyle(fontSize: 50 , color: Colors.white,
                            fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w700

                          ),
                        ),
                          Text("            App",
                            style: TextStyle(fontSize: 40 , color: Colors.white,
                                fontFamily: 'JosefinSans',
                              fontWeight: FontWeight.w600

                            ),
                          ),

                        ],),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 140.0),
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                        const Padding(
                           padding: EdgeInsets.only(top: 150,left: 10),
                          child:Text('Courses',
                            style: TextStyle(fontSize: 25 , color: Colors.black,
                              fontFamily: 'JosefinSans-Italic',


                          ),) ,
                           ),
                        
                         Container(
                                  margin: EdgeInsets.only(top: 200.0,),
                                  // child:
                                  // ListView.builder(
                                  //   itemCount: 6,
                                  //   itemBuilder:  (context, index) =>Column(
                                  //     children: const [
                                  child:   mycart(),
                                  //   ],
                                  // )
                                ),

                         // ),

                ],),
            ),
          ],),
      ),
    );
  }
}
