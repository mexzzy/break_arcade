import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileActivity extends StatelessWidget {
  final String image;
  final String time;
  final String gameName;
  final String progressOf;
  final String progressOver;

  const ProfileActivity({
    super.key,
    required this.image,
    required this.time,
    required this.gameName,
    required this.progressOf,
    required this.progressOver,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Play time $time hours',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayText,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  gameName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Achievement Progress $progressOf of $progressOver',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 0.7 * MediaQuery.of(context).size.width,
                  height: 3,
                  decoration: BoxDecoration(
                    color: AppColors.inputBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
