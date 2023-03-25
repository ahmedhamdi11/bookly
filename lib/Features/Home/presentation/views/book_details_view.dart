import 'package:bookly/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          actionOne: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
          title: IconButton(onPressed: () {}, icon: const Icon(Icons.close))),
      body: const BookDetailsViewBody(),
    );
  }
}
