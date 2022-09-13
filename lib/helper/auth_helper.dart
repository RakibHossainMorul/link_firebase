// ignore_for_file: avoid_print, prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:link_firebase/views/home_screen.dart';

class AuthHelper {
  //get storage use
  //final box = GetStorage();

  /*
  //code for signup method
  
  Future SignUp(userEmail, userPassword, context) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userEmail, password: userPassword);
      var authCredential = userCredential.user;
      //print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        box.write('id', authCredential.uid);
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen()));
      } else {
        print("Faild");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

//code for signin method
  Future SignIn(userEmail, userPassword, context) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: userEmail, password: userPassword);
      var authCredential = userCredential.user;
      //print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen()));
      } else {
        print("Faild");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
*/
//Google Sign IN System
///////////////////////
  Future signInWithGoogle(context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential _userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    User? _user = _userCredential.user;
    if (_user!.uid.isNotEmpty) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => HomeScreen(_user)));
    } else {
      print("There are ERROR");
    }
  }
}
