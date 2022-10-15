import 'package:flutter/material.dart';

class about extends StatelessWidget {
   about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:Padding(
         padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Column(
          children: [
            shape(name: 'Settings', myicon: Icon(Icons.settings)),
            shape(name: 'Support' , myicon: Icon(Icons.support_rounded)),
            shape(name: 'Rate Us' , myicon: Icon(Icons.stars_rounded)),


            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 30, height: 30,
                      child: const Image(image: AssetImage('assets/image/twitter.jpg')),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 30, height: 30,
                      child: const Image(image: AssetImage('assets/image/facebook.jpg')),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 30, height: 30,
                      child: Image(image: AssetImage('assets/image/instagram.jpg')),
                    )

                  ]),
            )
          ]
      )

      )
    );
  }
}

class shape extends StatelessWidget {
   shape({
    required this.name, required this.myicon,
  //  required this.myicon,
  });

  @override
  final String name;
  final Icon myicon ;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:  [
            IconButton(onPressed: null, icon: myicon),
             Text(name,
              style:const TextStyle(
               fontFamily: 'JosefinSans-Italic-VariableFont_wght.ttf',
                fontSize: 18
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width /2),
            CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              radius: 15,
              child: const Icon(Icons.arrow_forward_ios_rounded,size: 18,color: Colors.black,))
          ],
        ),
      ),
    );
  }
}
