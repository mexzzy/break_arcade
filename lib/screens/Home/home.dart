import 'package:break_arcade/components/frosted_glass.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:break_arcade/screens/Home/components/activity.dart';
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
          SizedBox(
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/userAvatar.png",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Samuel Meshach",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              24,
                            ),
                            color: AppColors.primaryBlueD1,
                          ),
                          child: const Text(
                            "@Mexzy",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
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
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FrostedGlass(
                  theWidth: 140,
                  thePadding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    right: 15,
                    left: 15,
                  ),
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
                const SizedBox(
                  width: 20,
                ),
                FrostedGlass(
                  theWidth: 140,
                  thePadding: const EdgeInsets.only(
                    top: 10,
                    bottom: 5,
                    right: 20,
                    left: 10,
                  ),
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
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ACTIVITY",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Activity(
                      image: 'assets/amongUs.jpeg',
                      time: '30',
                      gameName: "Among Us",
                      progressOf: '67',
                      progressOver: '100',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Activity(
                      image: 'assets/rangnarok.jpeg',
                      time: '30',
                      gameName: "Rangnarok",
                      progressOf: '67',
                      progressOver: '100',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Activity(
                      image: 'assets/snakeGame.png',
                      time: '20',
                      gameName: "Snake Game",
                      progressOf: '43',
                      progressOver: '100',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Activity(
                      image: 'assets/smashHit.png',
                      time: '30',
                      gameName: "Smash Hit",
                      progressOf: '67',
                      progressOver: '100',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
