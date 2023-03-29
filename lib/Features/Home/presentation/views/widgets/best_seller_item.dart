import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utile/app_router.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
        },
        child: SizedBox(
            height: 125,
            child: Row(
              children: [
                BookImage(
                    borderRadius: 8.0,
                    imageUrl: book.volumeInfo!.imageLinks?.thumbnail!),
                const SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //book title
                      BestSellerItemTitle(
                        title: book.volumeInfo!.title!,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      //author name
                      Text(
                        book.volumeInfo!.authors![0],
                        style: Styles.text14,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          //book price
                          const Text(
                            'free',
                            style: Styles.text20,
                          ),
                          const Spacer(),
                          //book rating
                          BookRating(
                            rate: book.volumeInfo!.averageRating ?? '-',
                            count: book.volumeInfo!.ratingsCount ?? 0,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

////////book title///////////
class BestSellerItemTitle extends StatelessWidget {
  const BestSellerItemTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        title,
        style: Styles.text20.copyWith(
          fontFamily: kGTSectraFineFontFamily,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
