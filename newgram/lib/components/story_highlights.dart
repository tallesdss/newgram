import 'package:flutter/material.dart';

class StoryHighlights extends StatelessWidget {
  const StoryHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _StoryHighlight(icon: Icons.add, label: 'New', isNew: true),
          _StoryHighlight(label: 'Travels', imageUrl: 'https://via.placeholder.com/60'),
          _StoryHighlight(label: 'Cool', imageUrl: 'https://via.placeholder.com/60'),
          _StoryHighlight(label: 'Scot', imageUrl: 'https://via.placeholder.com/60'),
          _StoryHighlight(label: 'Holidays', imageUrl: 'https://via.placeholder.com/60'),
          _StoryHighlight(label: 'D...', imageUrl: 'https://via.placeholder.com/60'),
        ],
      ),
    );
  }
}

class _StoryHighlight extends StatelessWidget {
  const _StoryHighlight({this.icon, required this.label, this.isNew = false, this.imageUrl});

  final IconData? icon;
  final String label;
  final bool isNew;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
              color: isNew ? Colors.grey.shade100 : null,
            ),
            child: icon != null
                ? Icon(icon, color: Colors.black, size: 30)
                : ClipOval(
                    child: Image.network(
                      imageUrl ?? 'https://via.placeholder.com/64',
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}


