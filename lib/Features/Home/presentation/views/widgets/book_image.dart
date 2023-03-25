import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, this.borderRadius = 16});
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.05 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: const DecorationImage(
              image: NetworkImage(
                'https://www.insightpublica.com/assets/img/books/insight_publica_book217_image_1_.5855009-jpg',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
