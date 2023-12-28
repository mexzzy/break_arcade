import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:break_arcade/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final Widget? onTapPage;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primaryBlue,
    this.textColor = AppColors.white,
    this.borderRadius = 10.0,
    this.onTapPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.8 * MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          if (onTapPage != null) {
            Get.to(
              () => onTapPage!,
              transition: Transition.rightToLeft,
            );
          } else {
            onPressed();
          }
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 13,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
