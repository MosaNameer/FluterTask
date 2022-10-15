import 'package:flutter/material.dart';
import 'package:flutterproject/screens/home_screen.dart';
import 'package:flutterproject/screens/login_screen.dart';
import 'package:flutterproject/servers/auth.dart';
import 'package:flutterproject/widgets/orginalbutton.dart';


class form extends StatefulWidget {
  final AuthType authType;

  const form({super.key, required this.authType});
  //const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final _formkey =GlobalKey<FormState>();
  String _email = ' ' , _password = ' ' ;
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
        child: Column(
      children: [
      const  SizedBox(height: 10,),
        TextFormField(
          onChanged: (value) => _email = value,
          validator: (value) => value!.isEmpty ? "enter your email" :null ,
          decoration:const InputDecoration(
            labelText: " Your Email",
            hintText: " shahad20@ gmail.com" ,
              hintStyle: TextStyle(color: Colors.black26,fontSize: 15)
          ),
        ),
       const SizedBox(height: 12),
        TextFormField(
          onChanged: (value) => _password = value,
          validator: (value) => value!.length < 6 ? "the password must be more the 6 char" :null,
          decoration:const InputDecoration(
              labelText: " Your Password",
              hintText: "enter your password",
              hintStyle: TextStyle(color: Colors.black26,fontSize: 15)

          //hintText: " shahad",
          ),
          obscureText: true,
        ),
      const  SizedBox(height: 25),
         orginalbutton(text: widget.authType == AuthType.login? "Login" : "register",
             textcolor: Colors.white, bgcolor: Colors.indigo,
            onpressed: ()async{
           if (_formkey.currentState!.validate()){
            if(widget.authType == AuthType.login) {
              await  authBase.loginWithEmailAndPassword(
                  _email , _password);
             Navigator.of(context).pushReplacementNamed('home');
            }
            else {
              await  authBase.registerWithEmailAndPassword(
                   _email, _password);
              Navigator.of(context).pushReplacementNamed('home');

            }
           }
            }
        ),

        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: () {
            if (widget.authType ==AuthType.login)
              Navigator.of(context).pushReplacementNamed('register');
            else
              Navigator.of(context).pushReplacementNamed('login');

          },
          child: Text(widget.authType ==AuthType.login ?'Don\'t have an accont?':'You have an accont',
              style: TextStyle(color: Colors.black45,fontSize: 18)),
        )

      ],
    ));
  }
}
