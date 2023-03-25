import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: const BookImage(),
          )
        ],
      ),
    );
  }
}
