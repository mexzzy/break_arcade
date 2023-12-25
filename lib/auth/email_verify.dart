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
                      fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    );
  }
}
