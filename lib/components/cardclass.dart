
import 'package:flutter/material.dart';

class FilmCardWidget extends StatefulWidget {
  final String title;
  final String imgPath;
  const FilmCardWidget({required this.title, required this.imgPath, super.key});
  @override
  State<FilmCardWidget> createState() => _FilmCardWidgetState();
}
class _FilmCardWidgetState extends State<FilmCardWidget> {
  bool isFavorite = false;
  String get title => widget.title;
  String get imgPath => widget.imgPath;

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
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.star : Icons.star_border,
                    color: Colors.yellow,
                    size: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}