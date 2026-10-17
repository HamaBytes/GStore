
import 'package:flutter/material.dart';
import '../components/filmdetailcardd.dart';

class FilmCardWidget extends StatefulWidget {
  final String title;
  final String imgPath;
  final String description;
  final double price;

  const FilmCardWidget({
    required this.title,
    required this.imgPath,
    required this.description,
    required this.price,
    super.key,
  });

  @override
  State<FilmCardWidget> createState() => _FilmCardWidgetState();
}

class _FilmCardWidgetState extends State<FilmCardWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FilmDetailsCard(
              widget.title,
              widget.description,
              widget.imgPath,
              widget.price,
            ),
          ),
        );
      },
      child: Card(
        elevation: 8,
        shadowColor: Colors.black.withOpacity(0.3),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Image.asset(
                  widget.imgPath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.broken_image, size: 50)),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.price.toStringAsFixed(0)}",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.star : Icons.star_border,
                      color: Colors.yellow[700],
                      size: 22,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}