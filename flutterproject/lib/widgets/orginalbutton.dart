import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

class orginalbutton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color bgcolor;
  final VoidCallback  onpressed;

  const orginalbutton({super.key, required this.text, required this.textcolor, required this.bgcolor,required this.onpressed});

 // const orginalbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
          primary: bgcolor, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: onpressed,
        child: Text('$text',style: TextStyle(fontSize: 20,color: textcolor),
        ),
      ),
    );
  }
}
