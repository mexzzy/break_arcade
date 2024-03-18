import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final Widget theChild;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const TabButton({
    super.key,
    required this.theChild,
    required this.onPressed,
    this.color = AppColors.inputBg,
    this.textColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: theChild,
      ),
    );
  }
}
