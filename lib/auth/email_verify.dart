// ignore_for_file: library_private_types_in_public_api

import 'package:break_arcade/auth/components/button.dart';
import 'package:break_arcade/auth/components/inputs.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  _EmailVerificationState createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryBg,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: AppColors.primaryBg,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/mail_open_outline_filled.png',
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Verify Your Email',
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
                  'samuelmeshach055@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Text(
                'enter the code from the email',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grayText,
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Input(),
                  SizedBox(width: 20),
                  Input(),
                  SizedBox(width: 20),
                  Input(),
                  SizedBox(width: 20),
                  Input(),
                ],
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Confirm',
                onPressed: () {
                  print('confirm Button Clicked!');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print("RE-Sending code");
                },
                child: SizedBox(
                  width: 8.0 * MediaQuery.of(context).size.width,
                  child: const Text(
                    'Resend Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
