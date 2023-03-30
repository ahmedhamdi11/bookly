import 'package:bookly/Features/Home/presentation/manager/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can also like',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
            builder: (context, state) {
              if (state is SimilarBooksSuccessState) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (context, index) => const SimilarBooksItem(),
                  ),
                );
              } else if (state is SimilarBooksFailureState) {
                return Text(state.errMessage);
              } else {
                return Text('loading');
              }
            },
          ),
        ],
      ),
    );
  }
}
