import 'package:break_arcade/auth/components/button.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Pending extends StatelessWidget {
  const Pending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/hands_plead.png'),
            const Text(
              "Sorry",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlue,
              ),
            ),
            const Text(
              "This feature will be coming soon",
              style: TextStyle(
                fontSize: 20,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 30,),
            CustomButton(
              text: "Back",
              onPressed: () {
                Navigator.of(context).pop();
              },
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
