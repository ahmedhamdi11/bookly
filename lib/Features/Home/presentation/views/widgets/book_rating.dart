import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 3.0,
        ),
        const Text(
          '4.8',
          style: Styles.text16,
        ),
        const SizedBox(
          width: 9.0,
        ),
        Text(
          '(2390)',
          style: Styles.text14,
        )
      ],
    );
  }
}
