import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: const Row(
        children: [
          _TabIcon(icon: FeatherIcons.grid, isActive: true),
          _TabIcon(icon: FeatherIcons.video),
          _TabIcon(icon: FeatherIcons.tag),
          _TabIcon(icon: FeatherIcons.bookmark),
          _TabIcon(icon: FeatherIcons.link),
          _TabIcon(icon: FeatherIcons.list),
        ],
      ),
    );
  }
}

class _TabIcon extends StatelessWidget {
  const _TabIcon({required this.icon, this.isActive = false});

  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.black : Colors.transparent,
              width: 1,
            ),
          ),
        ),
        child: IconButton(
          icon: Icon(
            icon,
            color: isActive ? Colors.black : Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}


