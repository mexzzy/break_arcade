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
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage("assets/profile_backdrop.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                "testing",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height / 1.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FrostedGlass(
                  thePadding: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                    right: 10,
                    left: 5,
                  ),
                  theWidth: 140,
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
                        "80 / 80",
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
                Container(
                  padding: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                    right: 10,
                    left: 5,
                  ),
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
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
