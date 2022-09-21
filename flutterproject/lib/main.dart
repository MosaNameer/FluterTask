import 'package:flutter/material.dart';
import 'package:flutterproject/screens/home_screen.dart';
import 'package:flutterproject/screens/intro_screen.dart';
import 'package:flutterproject/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
   main()    {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        'register' : (context) =>login_screen(authType:AuthType.register,)
      },
      home: intro_screen(),
    );
  }
}
