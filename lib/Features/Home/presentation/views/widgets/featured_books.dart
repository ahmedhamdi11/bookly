import 'package:bookly/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_books_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_book_item.dart';

class FeaturedBooks extends StatelessWidget {
  const FeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 50.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) => FeaturedBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return Text('err:${state.errMessage}');
        } else {
          return const FeaturedBooksShimmer();
        }
      },
    );
  }
}
