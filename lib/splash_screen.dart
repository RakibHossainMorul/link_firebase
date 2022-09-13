// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:link_firebase/sign_up.dart';
import 'package:link_firebase/views/home_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  //get storage usage for sign in data use.
  final box = GetStorage();
  chooseScreen(context) async {
    var userID = box.read('id');
    if (userID != null) {
      // Navigator.push(context, CupertinoPageRoute(builder: (_) => HomeScreen()));
    } else {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () => chooseScreen(context));
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
