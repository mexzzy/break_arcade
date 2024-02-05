import 'package:break_arcade/components/frosted_glass.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: AppColors.primaryBg,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.2,
            child: Stack(
              children: [
                Image.asset(
                  "assets/profile_backdrop.png",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(
                        //   "assets/profile_backdrop.png",
                        //   height: 100,
                        //   width: 100,
                        //   fit: BoxFit.cover,
                        // ),
                        Text(
                          "Samuel Meshach",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 30,
                  right: 10,
                  child: Icon(
                    Icons.settings,
                    color: AppColors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FrostedGlass(
                  theWidth: 140,
                  thePadding:
                      const EdgeInsets.only(top: 10, right: 10, left: 5),
                  theChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/medal_profile.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        "80/80",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                FrostedGlass(
                  theWidth: 140,
                  thePadding: const EdgeInsets.only(top: 10, right: 10),
                  theChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/trophy_profile.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        "984",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      ),
                    ],
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
