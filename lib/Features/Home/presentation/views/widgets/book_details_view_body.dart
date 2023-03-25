import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 34,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: const BookImage(),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Text(
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
          const BookRating()
        ],
      ),
    );
  }
}
