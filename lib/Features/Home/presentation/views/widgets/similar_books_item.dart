import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: BookImage(
        borderRadius: 8.0,
      ),
    );
  }
}
