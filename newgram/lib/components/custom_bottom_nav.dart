import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: _BottomBar(),
          ),
        ),
      ),
    );
  }
}

class _BottomBar extends StatefulWidget {
  const _BottomBar();

  @override
  State<_BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<_BottomBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index, BuildContext context) {
    setState(() {
      _currentIndex = index;
    });

    // Navegar para a tela correspondente
    if (index == 0) {
      // Home
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else if (index == 4) {
      // Profile
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (index) => _onTabTapped(index, context),
      items: [
        const BottomNavigationBarItem(
          icon: Icon(FeatherIcons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(FeatherIcons.search),
          label: 'Search',
        ),
        const BottomNavigationBarItem(
          icon: Icon(FeatherIcons.plusSquare),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const Icon(FeatherIcons.heart),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          label: 'Likes',
        ),
        const BottomNavigationBarItem(
          icon: Icon(FeatherIcons.user),
          label: 'Profile',
        ),
      ],
    );
  }
}


