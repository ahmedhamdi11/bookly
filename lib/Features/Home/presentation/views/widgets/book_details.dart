import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Jungle Book',
          style: Styles.text30,
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.text18.copyWith(
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 14.0,
        ),
        const BookRating(
          count: 200,
          rate: 4.6,
        ),
      ],
    );
  }
}
