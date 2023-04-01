import 'package:bookly/constants.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class BookDesc extends StatelessWidget {
  const BookDesc({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'description:',
            style: Styles.text16,
          ),
          Text(
            book.volumeInfo.description ?? 'there is no description',
            style: Styles.text14,
          ),
          const SizedBox(
            height: 6.0,
          ),
          const Text(
            'language:',
            style: Styles.text16,
          ),
          Text(
            book.volumeInfo.language ?? '-',
            style: Styles.text14,
          ),
          const SizedBox(
            height: 6.0,
          ),
          const Text(
            'publisher:',
            style: Styles.text16,
          ),
          Text(
            book.volumeInfo.publisher ?? '-',
            style: Styles.text14,
            maxLines: 2,
          ),
          const SizedBox(
            height: 6.0,
          ),
          const Text(
            'published at:',
            style: Styles.text16,
          ),
          Text(
            book.volumeInfo.publishedDate ?? '-',
            style: Styles.text14,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
