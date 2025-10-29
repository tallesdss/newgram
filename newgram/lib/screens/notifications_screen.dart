import 'package:flutter/material.dart';
import '../design_system/app_colors.dart';
import '../components/custom_bottom_nav.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Notificações',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      extendBody: true,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.grey),
            title: const Text(
              'Nova curtida na sua foto',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              'há 2 h',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemCount: 10,
      ),
      bottomNavigationBar: const CustomBottomNav(selectedIndex: 3),
    );
  }
}


