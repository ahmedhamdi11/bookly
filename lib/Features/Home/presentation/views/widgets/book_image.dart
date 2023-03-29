import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    this.borderRadius = 16,
    required this.imageUrl,
  });
  final double borderRadius;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.05 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
              image: NetworkImage(
                imageUrl ??
                    'https://cor-cdn-static.bibliocommons.com/assets/default_covers/icon-book-93409e4decdf10c55296c91a97ac2653.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
