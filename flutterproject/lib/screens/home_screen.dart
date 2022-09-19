import 'package:flutter/material.dart';
class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:Center(
        child: Text(" Home page" ,style: TextStyle(fontSize: 25,color: Colors.white)),
      ) ,
    );
  }
}
