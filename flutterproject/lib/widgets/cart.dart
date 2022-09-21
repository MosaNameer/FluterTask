import 'package:flutter/material.dart';

class mycart extends StatelessWidget {
  const mycart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder:  (context, index) =>
      Column(
      children: [
        SizedBox(
          height: 100, width: 350,
          child: Container(
            decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(5, 5),
                  )
                ],
                borderRadius: BorderRadius.circular(20),
                //image: DecorationImage(image: AssetImage("assets/image/Yoga.jpg"),fit: BoxFit.fill)
                color: Colors.grey
            ),
          ),
        ),
        SizedBox(height: 18,)
      ],
      )
    );
  }
}
