import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/manager/cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.book.volumeInfo.categories?[0] ?? 'success');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          actionOne: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
          title: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close))),
      body: BookDetailsViewBody(
        book: widget.book,
      ),
    );
  }
}
