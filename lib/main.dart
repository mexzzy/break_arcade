import 'package:break_arcade/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Break Arcade',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
