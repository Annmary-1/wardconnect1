import 'package:firstapp/home.dart';
//import 'package:firstapp/responsive/desktop_scaffold.dart';
//import 'package:firstapp/responsive/mobile_scaffold.dart';
//import 'package:firstapp/responsive/responsive_layout.dart';
//import 'package:firstapp/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
  runApp(LoginPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyElevatedButton(),
    );
  }
}
