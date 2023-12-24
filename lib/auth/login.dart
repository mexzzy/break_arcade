import 'package:break_arcade/auth/components/button.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryBg,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/breakArcade_logo.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  'Break Arcade',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 0.8 * MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 10,
                  left: 10,
                  bottom: 5,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.inputBg,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  style: const TextStyle(color: AppColors.white),
                  decoration: const InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: AppColors.grayText,
                    ),
                    border: InputBorder.none,
                  ),
                  // validator: (String? value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 0.8 * MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 10,
                  left: 10,
                  bottom: 5,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.inputBg,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: TextFormField(
                  style: const TextStyle(color: AppColors.white),
                  decoration: const InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: AppColors.grayText,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.visibility),
                    suffixIconColor: AppColors.grayText,
                  ),
                  // validator: (String? value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign in',
                onPressed: () {
                  print('Button Clicked!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
