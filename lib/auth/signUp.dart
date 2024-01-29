import 'package:break_arcade/auth/components/button.dart';
import 'package:break_arcade/auth/email_verify.dart';
import 'package:break_arcade/auth/login.dart';
import 'package:break_arcade/components/pending.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePasswordText = true;
  bool _obscureConfirmPasswordText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryBg,
        child: Center(
          child: SingleChildScrollView(
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
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 20,
                    left: 20,
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.inputBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
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
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 20,
                    left: 20,
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.inputBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: AppColors.white),
                    decoration: const InputDecoration(
                      hintText: 'email',
                      hintStyle: TextStyle(
                        color: AppColors.grayText,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 10,
                    left: 20,
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.inputBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    obscureText: _obscurePasswordText,
                    style: const TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: const TextStyle(
                        color: AppColors.grayText,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePasswordText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.grayText,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePasswordText = !_obscurePasswordText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 10,
                    left: 20,
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.inputBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    obscureText: _obscureConfirmPasswordText,
                    style: const TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                      hintText: 'confirm password',
                      hintStyle: const TextStyle(
                        color: AppColors.grayText,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPasswordText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.grayText,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPasswordText =
                                !_obscureConfirmPasswordText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Sign up',
                  onPressed: () {
                    print('navigate to EmailVerification');
                  },
                  onTapPage: const EmailVerification(),
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 0.8 * MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.inputBg,
                          width: 1.0,
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.primaryBg,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: const Text(
                        "Or continue with",
                        style: TextStyle(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const Pending(),
                          transition: Transition.topLevel,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: Image.asset(
                        'assets/logos_google.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/logos_facebook.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/green_logo.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const LoginScreen(),
                      transition: Transition.topLevel,
                      duration: const Duration(seconds: 1),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member ?",
                        style: TextStyle(color: AppColors.grayText),
                      ),
                      Text(
                        " Sign in now",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
