import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproject/screens/deatils/details_screen.dart';
import 'package:flutterproject/screens/deatils/details_screen2.dart';
import 'package:flutterproject/screens/home_screen.dart';
import 'package:flutterproject/screens/intro_screen.dart';
import 'package:flutterproject/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'lists/cart_list.dart';
   main()    async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.indigo));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
      //MyApp({ });
      //late cart_list carty;

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exersice",
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.black12,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12 ),
            borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12 ),
              borderRadius: BorderRadius.circular(20)
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12 ),
              borderRadius: BorderRadius.circular(20)
          ),
        )
      ),

      routes: {
        'home' : (context)=> home_screen(),
        'login' : (context) =>login_screen(authType:AuthType.login ),
        'register' : (context) =>login_screen(authType:AuthType.register,),
        'details' : (context) => details_screen(),
        'details2' : (context) => details_screen2(),

      },
      home: intro_screen(),
    );
  }
}
