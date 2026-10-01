import 'package:flutter/material.dart';

class FilmCardWidget extends StatelessWidget {
  final String title;
  final String imgPath;

  const FilmCardWidget({
    super.key,
    required this.title,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset(imgPath),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}