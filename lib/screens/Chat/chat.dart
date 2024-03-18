import 'package:break_arcade/components/search_bar.dart';
import 'package:break_arcade/screens/Chat/components/single_chat.dart';
import 'package:break_arcade/screens/Chat/message.dart';
import 'package:flutter/material.dart';
import 'package:break_arcade/constants/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: AppColors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_rounded,
              color: AppColors.white,
            ),
            onPressed: () {},
          ),
        ],
        title: const Text(
          "Chats",
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
              hintText: "Search chats",
              imageUrl: "assets/snakeGame.png",
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChat(
                      image: 'assets/snakeGame.png',
                      username: 'Micheal',
                      isOnline: false,
                      message: "I love the previous game",
                      time: "12:00 PM",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessageScreen(),
                          ),
                        );
                      },
                    ),
                    SingleChat(
                      image: 'assets/rangnarok.jpeg',
                      username: 'Femi',
                      message: "Do you really know about games",
                      messageIndex: "1",
                      time: "10:20 AM",
                      onTap: () {},
                    ),
                    SingleChat(
                      image: 'assets/amongUs.jpeg',
                      username: 'Samuel',
                      message: "Thanks for the gift",
                      messageIndex: "5",
                      time: "02:56 PM",
                      onTap: () {},
                    ),
                    SingleChat(
                      image: 'assets/smashHit.jpg',
                      username: 'Daniel',
                      message: "hey, you up for a game",
                      messageIndex: "2",
                      time: "07:10 AM",
                      onTap: () {},
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
