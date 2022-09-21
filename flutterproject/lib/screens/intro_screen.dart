import 'package:flutter/material.dart';
import 'package:flutterproject/screens/home_screen.dart';
import 'package:flutterproject/screens/login_screen.dart';
import 'package:flutterproject/widgets/orginalbutton.dart';

class intro_screen extends StatefulWidget {
  const intro_screen({Key? key}) : super(key: key);

  @override
  State<intro_screen> createState() => _intro_screenState();
}

class _intro_screenState extends State<intro_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 310,top: 10),
              child: InkWell(
                onTap: () {
                 Navigator.of(context).pushNamed('home');
                },
                child: const Text("Skip",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            const SizedBox(),
            Image.asset("assets/image/logo.png"),
            //start button
           orginalbutton(text: "Get Started",
               textcolor: Colors.indigo, bgcolor: Colors.white,
           onpressed: (){
               Navigator.of(context).pushNamed('login');
           }
           )
          ],
        ),
      ),
    );
  }
}
