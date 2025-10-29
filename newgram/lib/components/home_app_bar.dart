import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import '../design_system/app_colors.dart';
import '../design_system/app_spacing.dart';
import '../design_system/app_typography.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: false,
      titleSpacing: AppSpacing.space16,
      title: Text(
        'Newgram',
        style: AppTypography.appBarTitle,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Row(
            children: [
              Icon(FeatherIcons.plusSquare),
              SizedBox(width: 16),
              Icon(FeatherIcons.heart),
              SizedBox(width: 16),
              Icon(FeatherIcons.messageCircle),
            ],
          ),
        )
      ],
    );
  }
}


