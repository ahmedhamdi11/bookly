import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/Search/presentation/manager/cubits/search_cubit/search_cubit.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomTextfied(),
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchSuccessState) {
                if (state.books.isEmpty) {
                  return Center(
                    child: Text(
                      'No Results',
                      style: Styles.text14,
                    ),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.books.length,
                      itemBuilder: (context, index) => BestSellerItem(
                        book: state.books[index],
                      ),
                    ),
                  );
                }
              } else if (state is SearchFailureState) {
                return Center(
                  child: Text(state.errMessage),
                );
              } else if (state is SearchLoadingState) {
                return const LinearProgressIndicator();
              } else {
                return Center(
                  child: Text(
                    'Search for any book',
                    style: Styles.text14,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
