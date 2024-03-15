import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  final String message;
  @override
  final Color backgroundColor;
  final Color textColor;

  CustomSnackBar({
    super.key,
    Key? keys,
    required this.message,
    this.backgroundColor = AppColors.primaryBlue,
    this.textColor = AppColors.white,
  }) : super(
          content: Text(
            message,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: backgroundColor,
        );
}
