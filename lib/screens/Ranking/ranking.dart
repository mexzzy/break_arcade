import 'package:break_arcade/components/search_bar.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:break_arcade/screens/Ranking/components/ranks.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Ranking",
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
            const CustomSearchBar(
              hintText: "Search player",
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: AppColors.inputBg,
                          ),
                        ),
                      ),
                      child: const Column(
                        children: [
                          Ranks(
                            itemNumber: "1",
                            rankNumber: '876',
                            image: 'assets/rangnarok.jpeg',
                            username: 'Blessing',
                            textColor: AppColors.gold,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Ranks(
                            itemNumber: "2",
                            rankNumber: '656',
                            image: 'assets/snakeGame.png',
                            username: 'Charly',
                            textColor: AppColors.gold,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Ranks(
                            itemNumber: "3",
                            rankNumber: '602',
                            image: 'assets/amongUs.jpeg',
                            username: 'Shed_i',
                            textColor: AppColors.gold,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Ranks(
                      itemNumber: "4",
                      rankNumber: '566',
                      image: 'assets/rangnarok.jpeg',
                      username: 'Maxwell',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Ranks(
                      itemNumber: "5",
                      rankNumber: '432',
                      image: 'assets/snakeGame.png',
                      username: 'Vibrant',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Ranks(
                      itemNumber: "6",
                      rankNumber: '300',
                      image: 'assets/amongUs.jpeg',
                      username: 'Ronnie_',
                    ),
                    const SizedBox(
                      height: 30,
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
