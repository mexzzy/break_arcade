import 'package:break_arcade/components/search_bar.dart';
import 'package:break_arcade/screens/Friends/components/single_friend.dart';
import 'package:break_arcade/components/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:break_arcade/constants/app_colors.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Friends",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            CustomSearchBar(
              hintText: "Search player",
            ),
            Row(
              children: [
                TabButton(
                  theChild: const Text(
                    "My Friends",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                TabButton(
                  theChild: const Text(
                    "Received",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                TabButton(
                  theChild: const Text(
                    "Sent",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleFriend(
                      image: 'assets/snakeGame.png',
                      username: 'Micheal',
                      isOnline: false,
                    ),
                    SingleFriend(
                      image: 'assets/rangnarok.jpeg',
                      username: 'Femi',
                    ),
                    SingleFriend(
                      image: 'assets/amongUs.jpeg',
                      username: 'Samuel',
                    ),
                    SingleFriend(
                      image: 'assets/smashHit.jpg',
                      username: 'Daniel',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
