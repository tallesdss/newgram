import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key, this.username = 'manuelroviradesign'});

  final String username;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(FeatherIcons.settings, color: Colors.black),
        onPressed: () {},
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            username,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(FeatherIcons.chevronDown, color: Colors.black, size: 20),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(FeatherIcons.moreHorizontal, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}


