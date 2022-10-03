import 'package:flutter/material.dart';
import 'package:flutterproject/lists/cart_list.dart';
import 'package:flutterproject/screens/deatils/details_screen.dart';
import 'package:flutterproject/screens/deatils/details_screen2.dart';
class mycart extends StatelessWidget {
  final cart_list cart ;
  final cart_list cart2 ;
  const mycart({required Key key, required this.cart,
  required this.cart2})
: super(key: key);

  @override

  void press1(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        'details',
         arguments: {
             'id' :cart.id,
           'title' : cart.trainerName

         }
    );
  }
  void press2(ctx){
    Navigator.of(ctx)..pushNamed(
        'details2',
        arguments: {
          'id' :cart2.id,
          'title' : cart2.trainerName

        }
    );
  }
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap:()=>press1 (context),
            splashColor: Colors.indigo,
            child: SizedBox(
                  height: 200, width: 150,
                  child: Container(
                     padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image:  DecorationImage(image: AssetImage(cart.img),
                            fit: BoxFit.fill),
                        color: Colors.grey
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            child:
                             Text(cart.trainerName,
                              style: const TextStyle(color: Colors.white,
                                fontFamily:' JosefinSans',
                                  fontSize: 18,fontWeight: FontWeight.w500
                              )
                            )),
                        Container(
                         margin: EdgeInsets.only(top: 5),
                            child:
                            const Text(" Work expeices -3 years",
                                style: TextStyle(color: Colors.white,
                                    fontFamily:' JosefinSans',
                                    fontSize: 12,fontWeight: FontWeight.w500
                                )
                            ))
                      ],
                    ),
                  ),
                ),
          ),

              Container(
                margin: const EdgeInsets.only(top: 40),

                child: InkWell(
                  onTap: ()=>press2(context),
                  child: SizedBox(
                    height: 200, width: 150,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image:  DecorationImage(image: AssetImage(cart2.img),
                              fit: BoxFit.fill  ),
                          color: Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child:
                               Text(cart2.trainerName,
                                  style: const TextStyle(color: Colors.white,
                                      fontFamily:' JosefinSans',
                                      fontSize: 18,fontWeight: FontWeight.w500
                                  )
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child:
                              const Text(" Work expeices -3 years",
                                  style: TextStyle(color: Colors.white,
                                      fontFamily:' JosefinSans',
                                      fontSize: 12,fontWeight: FontWeight.w500
                                  )
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),

        ],),

     ]
    );
  }
}
