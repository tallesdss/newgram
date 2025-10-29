import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'components/profile_app_bar.dart';
import 'components/profile_header.dart';
import 'components/story_highlights.dart';
import 'components/profile_tab_bar.dart';
import 'components/photo_grid.dart';
import 'components/custom_bottom_nav.dart';
import 'design_system/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const InstagramProfileScreen(),
    );
  }
}

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(),
            const StoryHighlights(),
            const ProfileTabBar(),
            const PhotoGrid(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}