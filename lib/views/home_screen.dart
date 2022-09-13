// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  User user;
  HomeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(user.email.toString()),
      ),
    );
  }
}
