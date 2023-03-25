import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 16.0), child: BookImage());
  }
}
