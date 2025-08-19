import 'package:flutter/material.dart';
import '../models/card_item.dart';

class SwipeCard extends StatelessWidget {
  final CardItem item;

  const SwipeCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.broken_image, size: 80, color: Colors.grey),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color.fromARGB(180, 128, 0, 0),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: Text(
                item.title,
                style: const TextStyle(
                  color: Color(0xFFFFE5D9),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
