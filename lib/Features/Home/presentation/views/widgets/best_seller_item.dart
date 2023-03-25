import 'package:bookly/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utile/app_router.dart';
import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

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
                const BookImage(
                  borderRadius: 8.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //book title
                      const BestSellerItemTitle(),
                      const SizedBox(
                        height: 3.0,
                      ),
                      //author name
                      Text(
                        'J.K. Rowling',
                        style: Styles.text14,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: const [
                          //book price
                          Text(
                            '19.99 €',
                            style: Styles.text20,
                          ),
                          Spacer(),
                          //book rating
                          BookRating(),
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
  const BestSellerItemTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        'Harry Potter and the Goblet of Fire',
        style: Styles.text20.copyWith(
          fontFamily: kGTSectraFineFontFamily,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
