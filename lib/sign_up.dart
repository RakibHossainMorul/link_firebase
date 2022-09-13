// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link_firebase/helper/auth_helper.dart';
import 'package:link_firebase/views/sign_in.dart';

class SignUp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 150),
        child: Column(
          children: [
            Text("Sign Up Screen"),
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
                //  obj.SignUp(userEmail, userPassword, context);
              },
              child: Text("Sign Up"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => SignIn())),
              child: Text(
                "Already have Account ? Sign In",
                style: TextStyle(color: Colors.amber),
              ),
            ),
            TextButton(
                onPressed: () => AuthHelper().signInWithGoogle(context),
                child: Text("Sign in With Google Account")),
          ],
        ),
      ),
    );
  }
}
