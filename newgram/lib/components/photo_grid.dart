import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 9,
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
        ];
        return Container(
          color: colors[index],
          child: Image.network(
            'https://via.placeholder.com/150',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}


