// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link_firebase/sign_up.dart';

import '../helper/auth_helper.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 150),
        child: Column(
          children: [
            Text("Sign In Screen"),
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: passwordController,
            ),
            ElevatedButton(
              onPressed: () {
                final userEmail = emailController.text;
                final userPassword = passwordController.text;
                var obj = AuthHelper();
                //  obj.SignIn(userEmail, userPassword, context);
                FirebaseAuth.instance.signOut();
              },
              child: Text("Sign In"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => SignUp())),
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
