import 'dart:ui';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({
    super.key,
    required this.theWidth,
    this.theHeight,
    required this.theChild,
    this.thePadding,
  });

  final double theWidth;
  final dynamic theHeight;
  final dynamic theChild;
  final dynamic thePadding;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        padding: thePadding,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.white.withOpacity(
                      0.15,
                    ),
                    AppColors.inputBg,
                  ],
                ),
              ),
            ),
            Container(
              child: theChild,
            ),
          ],
        ),
      ),
    );
  }
}
