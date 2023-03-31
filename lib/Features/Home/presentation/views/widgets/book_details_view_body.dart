import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_details.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          //book image
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: BookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),

          //book details (title,author,rating)
          BookDetails(
            book: book,
          ),
          const SizedBox(
            height: 37.0,
          ),

          //book actions (buy,free previw)button
          BookActions(
            book: book,
          ),
          const SizedBox(
            height: 48.0,
          ),

          //similar books (title,BookslistView)
          const SimilarBooks(),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
