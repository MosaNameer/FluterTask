import 'package:flutter/material.dart';
class cart_list {
  final int id ;
   final String img , trainerName , courseName;
  cart_list(
      {
    required this.trainerName,
    required this.courseName,
    required this.id,
    required this.img,

});
}

List<cart_list> cart_lists =[

  cart_list(id: 1,img:'assets/image/img1.jpg',trainerName: 'Ahmed Basam', courseName: 'mnjnn '),
  cart_list(id: 2,img:'assets/image/img4.jpg',trainerName: 'Sajad abd', courseName: 'mmmnj'),
  cart_list(id: 3,img:'assets/image/img3.jpg',trainerName: 'Sara Ali', courseName: 'llkijij'),



];

List<cart_list> cart_list2 =[

  cart_list(id: 1,img:'assets/image/img5.jpg',trainerName: 'Maha Amer', courseName: 'mnjnjn'),
  cart_list(id: 1,img:'assets/image/img2.jpg',trainerName: 'Shahad Jwad', courseName: 'mkkkkk'),
  cart_list(id: 1,img:'assets/image/img6.jpg',trainerName: 'Ali Karem', courseName: 'xss'),


];

