import 'package:flutter/material.dart';
import '../components/home_app_bar.dart';
import '../components/home_post_card.dart';
import '../components/custom_bottom_nav.dart';
import '../design_system/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const HomeAppBar(),
      extendBody: true,
      body: ListView.separated(
        itemBuilder: (context, index) => const HomePostCard(),
        separatorBuilder: (context, index) => const SizedBox.shrink(),
        itemCount: 5,
      ),
      bottomNavigationBar: const CustomBottomNav(selectedIndex: 0),
    );
  }
}


