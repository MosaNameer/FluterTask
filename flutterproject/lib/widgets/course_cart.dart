import 'package:flutter/material.dart';
import '../lists/cart_list.dart';

class mycourse_cart extends StatelessWidget {
  const mycourse_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgment = ModalRoute.of(context)?.settings.arguments as
    Map<String , String>;
    final myid= routeArgment['id'];
    final mytitile = routeArgment['title'];
    final filtercourses = Course_data.where((course) {
      return course.categorise.contains(myid);
    }).toList();
    return
      Container(
        child: ListView.builder(
          itemCount: filtercourses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(offset: Offset(8, 10),
                              color: Colors.indigo.shade50
                          )
                        ]
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            margin:const EdgeInsets.only(right: 40),
                            child: Text(filtercourses[index].Course_Name,
                              style: const TextStyle(fontSize: 20,fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:80,top: 35),
                            child: Row(
                              children: [
                               const Icon(Icons.timer_rounded,size: 22,color: Colors.grey),
                                Text('${filtercourses[index].time} hours'),
                               SizedBox(width: 50),
                                const Icon(Icons.price_change,size: 22,color: Colors.grey),
                                Text('${filtercourses[index].price} \$'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius:  BorderRadius.circular(25)),
                    child: CircleAvatar(
                      backgroundImage:NetworkImage(filtercourses[index].img),
                      radius: 50,
                    ) ,

                  )
                ],
              ),
            );
          },

        ),
      );
  }
}


class mycourse_cart2 extends StatelessWidget {
  const mycourse_cart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgment = ModalRoute.of(context)?.settings.arguments as
    Map<String , String>;
    final myid= routeArgment['id'];
    final mytitile = routeArgment['title'];
    final filtercourses = Course_data.where((course) {
      return course.categorise.contains(myid);
    }).toList();
    return
      Container(
        child: ListView.builder(
          itemCount: filtercourses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(offset: Offset(8, 10),
                              color: Colors.indigo.shade50
                          )
                        ]
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            margin:const EdgeInsets.only(right: 40),
                            child: Text(filtercourses[index].Course_Name,
                              style: const TextStyle(fontSize: 20,fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:80,top: 35),
                            child: Row(
                              children: [
                                const Icon(Icons.timer_rounded,size: 22,color: Colors.grey),
                                Text('${filtercourses[index].time} hours'),
                                SizedBox(width: 50),
                                const Icon(Icons.price_change,size: 22,color: Colors.grey),
                                Text('${filtercourses[index].price} \$'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius:  BorderRadius.circular(25)),
                    child: CircleAvatar(
                      backgroundImage:NetworkImage(filtercourses[index].img),
                      radius: 50,
                    ) ,

                  )
                ],
              ),
            );
          },

        ),
      );
  }
}


class course_cart {
  final String id , time;
  final List<String> categorise ;
  final String Course_Name ;
  final String img ;
  final int price;

 const course_cart({required this.id , required this.categorise , required this.Course_Name,
                    required this.img , required this.time, required this.price
 });
}