import 'package:flutter/material.dart';
import '../../lists/cart_list.dart';
import '../../widgets/course_cart.dart';
class details_screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgment = ModalRoute
        .of(context)
        ?.settings
        .arguments as
    Map<String, String>;
    final myid = routeArgment['id'];
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
  }}