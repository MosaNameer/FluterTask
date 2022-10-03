import 'package:flutter/material.dart';
import '../../lists/cart_list.dart';
import '../../widgets/course_cart.dart';
class details_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgment = ModalRoute.of(context)?.settings.arguments as
    Map<String , String>;
    final myid= routeArgment['id'];
    final mytitile = routeArgment['title'];
    final filtercourses = Course_data.where((course) {
      return course.categorise.contains(myid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(mytitile!),
      ),
       body: mycourse_cart()
    );

























    // body:  ListView.builder(
    //   itemCount: 5,
    //   itemBuilder: (context, index) =>  cart.bodyy,
    // )

        // const course_cart(img: 'https://i.pinimg.com/564x/79/7c/6c/797c6c10a32e71e850c179b8bbae00be.jpg'),
        // const course_cart(img: 'https://i.pinimg.com/564x/db/79/81/db7981dfa98ed8824e04897881116be0.jpg'),
        // const course_cart(img: 'https://i.pinimg.com/564x/f3/af/88/f3af888fd7cb8561b2a0e5cee90ba2a4.jpg'),
        // const course_cart(img: 'https://i.pinimg.com/564x/6b/ab/5b/6bab5b64e070a62cc7d6b1484c1c911f.jpg'),
        // const course_cart(img: 'https://i.pinimg.com/564x/80/23/80/802380539e78bfee05208a0562f83a8a.jpg'),
        // const course_cart(img: 'https://i.pinimg.com/564x/e8/b5/85/e8b585112f104570d56775cac1b1f03f.jpg'),

    //);
  }
}
