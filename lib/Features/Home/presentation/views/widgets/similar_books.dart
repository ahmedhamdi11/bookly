import 'package:bookly/Features/Home/presentation/manager/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_item.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_shimmer.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (state.book.isNotEmpty)
                  const Text(
                    'You can also like',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                if (state.book.isNotEmpty)
                  const SizedBox(
                    height: 16.0,
                  ),
                if (state.book.isNotEmpty)
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.book.length,
                      itemBuilder: (context, index) => SimilarBooksItem(
                        book: state.book[index],
                      ),
                    ),
                  ),
              ],
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return Column(
            children: [
              Text(state.errMessage),
              TextButton(
                  onPressed: () {
                    BlocProvider.of<SimilarBooksCubit>(context)
                        .fetchSimilarBooks(
                            category:
                                book.volumeInfo.categories?[0] ?? 'success');
                  },
                  child: const Text('try again'))
            ],
          );
        } else {
          return const SimilarBooksShimmer();
        }
      },
    );
  }
}
