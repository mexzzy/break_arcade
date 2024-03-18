import 'package:break_arcade/auth/components/button.dart';
import 'package:break_arcade/auth/components/social_icon.dart';
import 'package:break_arcade/components/pending.dart';
import 'package:break_arcade/auth/sign_up.dart';
import 'package:break_arcade/components/main_screen.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

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
                    obscureText: _obscureText,
                    style: const TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: const TextStyle(
                        color: AppColors.grayText,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.grayText,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: const Text(
                    'Forgot password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.grayText,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Sign in',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 40),
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
                    SocialIcon(
                      icon: 'assets/logos_google.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pending(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    SocialIcon(
                      icon: 'assets/logos_facebook.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pending(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    SocialIcon(
                      icon: 'assets/green_logo.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pending(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member ?",
                        style: TextStyle(color: AppColors.grayText),
                      ),
                      Text(
                        " Register now",
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
