import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:link_firebase/splash_screen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //Connect With Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //get storage initialize
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
