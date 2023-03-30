import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key, required this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: BookImage(
        borderRadius: 8.0,
        imageUrl: imageUrl,
      ),
    );
  }
}
