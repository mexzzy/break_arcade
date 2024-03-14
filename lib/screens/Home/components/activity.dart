import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  final String image;
  final String time;
  final String gameName;
  final String progressOf;
  final String progressOver;

  const Activity({
    super.key,
    required this.image,
    required this.time,
    required this.gameName,
    required this.progressOf,
    required this.progressOver,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              image,
              width: 70,
              height: 70,
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
                  ),
                ),
                Text(
                  gameName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'Achievement Progress $progressOf of $progressOver',
                  style: const TextStyle(
                    color: AppColors.white,
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 5,
                //   decoration: BoxDecoration(
                //     color: AppColors.white,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
