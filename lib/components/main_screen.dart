import 'package:break_arcade/constants/app_colors.dart';
import 'package:break_arcade/screens/friends.dart';
import 'package:break_arcade/screens/games.dart';
import 'package:break_arcade/screens/home.dart';
import 'package:break_arcade/screens/notification.dart';
import 'package:break_arcade/screens/ranking.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget _buildScreen() {
    switch (_selectedTab) {
      case 0:
        return const HomeScreen();
      case 1:
        return const RankingScreen();
      case 2:
        return const GamesScreen();
      case 3:
        return const FriendsScreen();
      case 4:
        return const NotificationScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: AppColors.primaryBg,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: BottomNavigationBar(
            currentIndex: _selectedTab,
            onTap: _changeTab,
            selectedItemColor: AppColors.primaryBlue,
            unselectedItemColor: AppColors.grayText,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home",
                tooltip: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_events,
                ),
                label: "Ranking",
                tooltip: "Ranking",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.auto_awesome_mosaic,
                ),
                label: "Games",
                tooltip: "Games",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: "Friends",
                tooltip: "Friends",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Notification",
                tooltip: "Notification",
              ),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
