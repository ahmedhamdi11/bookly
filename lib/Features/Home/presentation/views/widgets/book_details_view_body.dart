import 'package:bookly/Features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_details.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
            child: const BookImage(
              imageUrl:
                  'https://cor-cdn-static.bibliocommons.com/assets/default_covers/icon-book-93409e4decdf10c55296c91a97ac2653.png',
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),

          //book details (title,author,rating)
          const BookDetails(),
          const SizedBox(
            height: 37.0,
          ),

          //book actions (buy,free previw)button
          const BookActions(),
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
