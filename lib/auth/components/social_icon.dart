import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        icon,
        height: 40,
        width: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}
