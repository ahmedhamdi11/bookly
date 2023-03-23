import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        FeaturedBooks(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Best Seller',
            style: Styles.text18,
          ),
        ),
      ],
    );
  }
}
