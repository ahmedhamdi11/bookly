import 'package:bookly/Features/Home/presentation/views/widgets/best_seller_books.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_books.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          //featured books listView
          FeaturedBooks(),

          //Best seller title
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Best Seller',
              style: Styles.text18,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //best seller listViw
          BestSellerBooks(),
        ],
      ),
    );
  }
}
