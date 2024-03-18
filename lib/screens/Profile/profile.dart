import 'package:break_arcade/components/tab_button.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:break_arcade/screens/Profile/components/profile_activity.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 0.15 * MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/backdrop.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  top: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x18000000).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x18000000).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.more_vert_rounded,
                            color: AppColors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -40),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        child: Image.asset(
                          "assets/userAvatar.png",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Adewale Micheal',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.white,
                                  decoration: TextDecoration.none,
                                  shadows: [
                                    Shadow(
                                      color: const Color(0x18000000)
                                          .withOpacity(0.3),
                                      offset: const Offset(1, 1),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '@mike',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grayText,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "968",
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            "WINS",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "55",
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            "LVL",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "86",
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            "HOURS",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.grayText,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 0.7 * MediaQuery.of(context).size.width,
                        child: TabButton(
                          theChild: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColors.primaryBlue,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Add to friends",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 20),
                      TabButton(
                        theChild: const Icon(
                          Icons.send_rounded,
                          color: AppColors.primaryBlue,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      TabButton(
                        theChild: const Text(
                          "Activities",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      TabButton(
                        theChild: const Text(
                          "Post",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 20),
                      TabButton(
                        theChild: const Row(
                          children: [
                            Text(
                              "Friends",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "543",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.primaryBlue,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileActivity(
                          image: 'assets/amongUs.jpeg',
                          time: '43',
                          gameName: "Among Us",
                          progressOf: '24',
                          progressOver: '100',
                        ),
                        ProfileActivity(
                          image: 'assets/rangnarok.jpeg',
                          time: '32',
                          gameName: "Rangnarok",
                          progressOf: '67',
                          progressOver: '100',
                        ),
                        ProfileActivity(
                          image: 'assets/snakeGame.png',
                          time: '20',
                          gameName: "Snake Game",
                          progressOf: '43',
                          progressOver: '100',
                        ),
                        ProfileActivity(
                          image: 'assets/smashHit.jpg',
                          time: '16',
                          gameName: "Smash Hit",
                          progressOf: '55',
                          progressOver: '100',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
