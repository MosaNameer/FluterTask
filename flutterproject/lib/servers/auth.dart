import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  final String uid;

  User({required this.uid});
}

class AuthBase {
  User? _userFromFirebase(User user) {
    return user != null ? User(uid: user.uid) : null;
  }


    Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
      try {
        final authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      var widget;
      return _userFromFirebase(widget.UserCredential.user);
      } catch (e) {
        print(e.toString());
        return null;
      }

  }

  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      var widget;
      return _userFromFirebase(widget.UserCredential.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}



// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class User {
//   final String uid;
//   User(@required this.uid);
// }
//
// class AuthBase{
//   User _userFromFirebase (User user){
// return User(uid : user.uid);
//   }
//   Future<User> registerWithEmailAndPassword(String email , String password) async{
// final UserCredential=
// await FirebaseAuth.instance.createUserWithEmailAndPassword
//   (email: email, password: password);
// return _userFromFirebase(UserCredential.user);
//   }
//
// }