import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          //book titl
          Text(
            book.volumeInfo.title ?? '',
            style: Styles.text30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4.0,
          ),
          //book author
          Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.text18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 14.0,
          ),
          BookRating(
            count: book.volumeInfo.ratingsCount,
            rate: book.volumeInfo.averageRating,
          ),
        ],
      ),
    );
  }
}
