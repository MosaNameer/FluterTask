import 'package:flutter/material.dart';
import '../widgets/form.dart';
enum AuthType{login , register}

class login_screen extends StatelessWidget {
  final AuthType authType;

  const login_screen({super.key, required this.authType});
  //const login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
          Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) ,
                    bottomRight: Radius.circular(30)),
              ),
            ),

              Container(
                padding:const EdgeInsets.all(20),
                child:
                Column(
                  children: [
                    SizedBox(height: 10,),
                    const Text("Hello !",style: TextStyle(color: Colors.white,fontSize: 25),),
                    Image.asset("assets/image/logo.png"),
                    form(authType:authType ),
                  ],
                ),
              )
          ],
        ),


          ],

        ),
      ),
    );
  }
}
