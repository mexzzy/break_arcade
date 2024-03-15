import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:break_arcade/components/main_screen.dart';
import 'package:break_arcade/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor:  AppColors.primaryBg,
            elevation: 0.0,
          ),
        ),
        title: 'Break Arcade',
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        // home: MainScreen(),
      ),
    );
  }
}
