import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tansporter/Screens/login.dart';
import 'package:tansporter/Screens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tranporter App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Login()
    );
  }
}

