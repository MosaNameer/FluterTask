import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/course_cart.dart';
import 'package:provider/provider.dart';

import '../lists/cart_list.dart';
class theCart extends StatefulWidget {
  const theCart({Key? key}) : super(key: key);

  @override
  State<theCart> createState() => _theCartState();
}

class _theCartState extends State<theCart> {
  @override
  Widget build(BuildContext context) {

    return Consumer<whataver>(
        builder: (context , whataver, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('My Cart'),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.indigo,
              centerTitle: true,
            ),
            body: whataver.basketItem.length == 0 ?

            const Center(child:  Text('no items in your cart',

                )) :
                
               ListView.builder(
                 itemCount: whataver.basketItem.length,
                   itemBuilder: (context , index){
                  return Card(
                     child: ListTile(
                       leading:  CircleAvatar(
                         backgroundImage:NetworkImage(
                             whataver.basketItem[index].img
                         ),
                       ) ,

                       title:  Text('${whataver.basketItem[index].Course_Name}'
                       ),
                       subtitle:  Text('${whataver.basketItem[index].price} \$'),
                       trailing: IconButton(
                           onPressed: (){
                             whataver.remove(whataver.basketItem[index]);
                           },
                           icon: Icon(Icons.delete)
                       ),
                     ),
                  );
                   }
               )
          );
        }
    );
      
     
  }
}
