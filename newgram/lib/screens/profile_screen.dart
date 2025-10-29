import 'package:flutter/material.dart';
import '../components/profile_app_bar.dart';
import '../components/profile_header.dart';
import '../components/profile_tab_bar.dart';
import '../components/photo_grid.dart';
import '../components/custom_bottom_nav.dart';
import '../design_system/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const ProfileAppBar(),
      extendBody: true,
      body: Column(
        children: [
          const ProfileHeader(),
          Expanded(
            child: Column(
              children: const [
                Expanded(child: PhotoGrid()),
                ProfileTabBar(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNav(selectedIndex: 4),
    );
  }
}


