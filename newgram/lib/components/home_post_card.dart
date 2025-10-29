import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import '../design_system/app_colors.dart';
import '../design_system/app_spacing.dart';
import '../design_system/app_typography.dart';

class HomePostCard extends StatelessWidget {
  const HomePostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.space16,
            vertical: AppSpacing.space12,
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.border,
                child: Icon(Icons.person, size: 16, color: Colors.black),
              ),
              const SizedBox(width: AppSpacing.space12),
              Expanded(
                child: Text(
                  'username',
                  style: AppTypography.userName,
                ),
              ),
              const Icon(FeatherIcons.moreHorizontal),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: AppColors.surface,
            alignment: Alignment.center,
            child: const Icon(Icons.photo, size: 64, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.space16,
            vertical: AppSpacing.space12,
          ),
          child: Row(
            children: const [
              Icon(FeatherIcons.heart),
              SizedBox(width: 16),
              Icon(FeatherIcons.messageCircle),
              SizedBox(width: 16),
              Icon(FeatherIcons.send),
              Spacer(),
              Icon(FeatherIcons.bookmark),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.space16),
          child: Text(
            '1.024 curtidas',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: AppSpacing.space8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.space16),
          child: Text('Legenda de exemplo para o post...'),
        ),
        const SizedBox(height: AppSpacing.space16),
        const Divider(height: 1),
      ],
    );
  }
}


