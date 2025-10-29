import 'package:flutter/material.dart';
import '../components/custom_bottom_nav.dart';
import '../design_system/app_colors.dart';
import '../design_system/app_spacing.dart';
import '../design_system/app_typography.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: false,
        titleSpacing: AppSpacing.space16,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Pesquisar',
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            filled: true,
            fillColor: AppColors.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          style: AppTypography.bodyRegular,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.camera_alt_outlined, color: Colors.black),
          ),
        ],
      ),
      extendBody: true,
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space2,
          vertical: AppSpacing.space2,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          final colors = [
            Colors.cyan.shade300,
            Colors.amber.shade200,
            Colors.pink.shade200,
            Colors.blue.shade600,
            Colors.brown.shade300,
            Colors.purple.shade200,
            Colors.orange.shade300,
            Colors.teal.shade400,
            Colors.grey.shade400,
            Colors.red.shade300,
          ];
          return Container(
            color: colors[index % colors.length],
            child: Image.network(
              'https://picsum.photos/300/300?random=$index',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNav(selectedIndex: 1),
    );
  }
}
