import 'package:flutter/material.dart';
import 'package:my_project/pages/main/favorites/favorite_page.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';
import 'package:my_project/pages/main/home/home_page.dart';
import 'package:my_project/pages/router/app_routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: const [
          HomePage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        currentIndex: currentPage,
        items: [
          _navigationBarItem(
            label: 'Home',
            icon: Icons.search,
            activeIcon: Icons.search,
          ),
          _navigationBarItem(
            label: 'Favorites',
            icon: Icons.favorite,
            activeIcon: Icons.favorite,
          ),
          _navigationBarItem(
            label: 'Profile',
            icon: Icons.person,
            activeIcon: Icons.person,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _navigationBarItem({
    required String label,
    required IconData icon,
    required IconData activeIcon,
  }) =>
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Icon(icon),
        ),
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Icon(activeIcon),
        ),
        label: label,
        tooltip: label,
      );
}


void navigate(MyStories story, BuildContext context) {
    Navigator.pushNamed(context, Routes.detailPage, arguments: story);
  }