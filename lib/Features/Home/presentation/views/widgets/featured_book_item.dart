import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: const DecorationImage(
                image: NetworkImage(
                  'https://www.insightpublica.com/assets/img/books/insight_publica_book217_image_1_.5855009-jpg',
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
