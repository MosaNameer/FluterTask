import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../lists/cart_list.dart';

class mycourse_cart extends StatelessWidget {
    late List filtercourses ;
  // mycourse_cart() {required this.}

  @override
  Widget build(BuildContext context) {
    final routeArgment = ModalRoute.of(context)?.settings.arguments as
    Map<String , String>;
    final myid= routeArgment['id'];
     filtercourses = Course_data.where((course) {
      return course.categorise.contains(myid);
    }).toList();
    return
      Consumer<whataver>(
        builder: (context ,whataver , child) {
          return Container(
            child: ListView.builder(
              itemCount: filtercourses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                             ]),
                         child: Container(
                           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                           child: Column(
                             children: [
                               Container(
                                 margin:const EdgeInsets.only(right: 40),
                                 child: Text(filtercourses[index].Course_Name,
                                   style: const TextStyle(fontSize: 20,fontFamily: 'JosefinSans',
                                       fontWeight: FontWeight.w900),
                                 ),),

                               Container(
                                 margin: EdgeInsets.only(left:80,top: 35),
                                 child: Row(
                                   children: [
                                     const Icon(Icons.timer_rounded,size: 22,color: Colors.grey),
                                     Text('${filtercourses[index].time} hours'),
                                     SizedBox(width: 50),
                                     const Icon(Icons.price_change,size: 22,color: Colors.grey),
                                     Text('${filtercourses[index].price} \$'),
                                   ],),
                               ),
                             ],),
                         ),
                       ),
          Container(
                  margin: EdgeInsets.only(
                     left:MediaQuery.of(context).size.width/1.2,
                      top: 35
                                       ),
           child:IconButton(
                      onPressed: (){
                   whataver.add( Course_data[index]);
                                   },
                    icon:const Icon(Icons.add_box_rounded,
                   size: 30,color: Colors.grey,) ) ,
          ),


          Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: CircleAvatar(
                         backgroundImage:NetworkImage(filtercourses[index].img),
                         radius: 50,
              ) ,

          )
          ],),
                );
                },

            )
          );
        }
      );
  }
}



class course_cart  {

  final String id , time;
  final List<String> categorise ;
  final String Course_Name ;
  final String img ;
  final int price;

 const course_cart({required this.id , required this.categorise , required this.Course_Name,
                    required this.img , required this.time, required this.price
 });
}


class whataver  extends ChangeNotifier{

  int index =0;
  List<course_cart> _items =[];
  double _totalprice =0.0;
  // String _name = _items[index].Course_Name;


  void add(course_cart item){
    _items.add(item);
    _totalprice +=item.price;
    notifyListeners();
  }

  void remove(course_cart item ){
    _totalprice -=item.price;
    _items.remove(item);
    notifyListeners();

  }

  int get count {
    return _items.length;
  }

  double get totalprice {
    return _totalprice;
  }

  List<course_cart> get basketItem {
    return _items;
  }

}







