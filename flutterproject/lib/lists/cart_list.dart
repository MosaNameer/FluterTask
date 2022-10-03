import 'package:flutter/material.dart';
import 'package:flutterproject/widgets/course_cart.dart';
class cart_list {
   final String img , trainerName , courseName,id;
  cart_list(
      {
    required this.trainerName,
    required this.courseName,
    required this.id,
    required this.img,

});
}

List<cart_list> cart_lists =[

  cart_list(id: 'c1',img:'assets/image/img1.jpg',trainerName: 'Ahmed Basam', courseName: 'mnjnn '),
  cart_list(id: 'c2',img:'assets/image/img4.jpg',trainerName: 'Sajad abd', courseName: 'mmmnj'),
  cart_list(id: 'c3',img:'assets/image/img3.jpg',trainerName: 'Sara Ali', courseName: 'llkijij'),



];

List<cart_list> cart_list2 =[

  cart_list(id: 'm1',img:'assets/image/img5.jpg',trainerName: 'Maha Amer', courseName: 'mnjnjn'),
  cart_list(id: 'm2',img:'assets/image/img2.jpg',trainerName: 'Shahad Jwad', courseName: 'mkkkkk'),
  cart_list(id: 'm3',img:'assets/image/img6.jpg',trainerName: 'Ali Karem', courseName: 'xss'),


];

const Course_data = [
  course_cart(
      id: 's1',
      categorise: ['c1'],
      time: '7',
      price:  10,
      Course_Name: 'Full Body ',
      img: 'https://i.pinimg.com/564x/79/7c/6c/797c6c10a32e71e850c179b8bbae00be.jpg'),

  course_cart(
      id: 's2',
      categorise: ['c2'],
      time:  '30',
      price:  15,
      Course_Name: ' Legs',
      img: 'https://i.pinimg.com/564x/db/79/81/db7981dfa98ed8824e04897881116be0.jpg'),

  course_cart(
      id: 's3',
      categorise: ['c3'],
      time:  '40',
      price:  12,
      Course_Name: 'Arm ',
      img: 'https://i.pinimg.com/564x/f3/af/88/f3af888fd7cb8561b2a0e5cee90ba2a4.jpg'),

  course_cart(
      id: 's4',
      categorise: ['c2'],
      time:  '14',
      price:  25,
      Course_Name: ' ',
      img: 'https://i.pinimg.com/564x/6b/ab/5b/6bab5b64e070a62cc7d6b1484c1c911f.jpg'),

  course_cart(
      id: 's5',
      categorise: ['c1'],
      time:  '8',
      price:  9,
      Course_Name: ' Course_Name ',
      img: 'https://i.pinimg.com/564x/80/23/80/802380539e78bfee05208a0562f83a8a.jpg'),

  course_cart(
      id: 's6',
      categorise: ['c1'],
      time:  '12',
      price:  12,
      Course_Name: '  Course_Name',
      img: 'https://i.pinimg.com/564x/e8/b5/85/e8b585112f104570d56775cac1b1f03f.jpg'),

  course_cart(
      id: 's7',
      categorise: ['m1'],
      time: '7',
      price:  10,
      Course_Name: 'Full Body ',
      img: 'https://i.pinimg.com/564x/25/ba/64/25ba64cbbdee85955f476cf71c781f58.jpg'),

  course_cart(
      id: 's8',
      categorise: ['c1'],
      time: '10',
      price:  10,
      Course_Name: 'Full Body ',
      img: 'https://i.pinimg.com/564x/ab/76/b9/ab76b93b22a55650a6e627ffa588cc62.jpg'),

  course_cart(
      id: 's9',
      categorise: ['c1'],
      time:  '78',
      price:  50,
      Course_Name: '  Course_Name',
      img: 'https://i.pinimg.com/564x/7a/6b/20/7a6b2039d585af6b4b2937b1d21b2e40.jpg' ),

  course_cart(
      id: 's10',
      categorise: ['c1'],
      time:  '18',
      price:  20,
      Course_Name: '  Course_Name',
      img: 'https://i.pinimg.com/564x/a8/3c/03/a83c0324f96615a22e7697f72192562d.jpg'),

  course_cart(
      id: 's11',
      categorise: ['m2'],
      time:  '11',
      price:  25,
      Course_Name: '  Course_Name',
      img: 'https://i.pinimg.com/736x/13/d9/78/13d978125c2c77ae17c8c1831028d0ef.jpg'),

  course_cart(
      id: 's12',
      categorise: ['m3'],
      time:  '11',
      price:  20,
      Course_Name: '  Course_Name',
      img: 'https://i.pinimg.com/736x/1a/9c/17/1a9c17288dea990039f1cc5642ae8c4e.jpg'),
];




