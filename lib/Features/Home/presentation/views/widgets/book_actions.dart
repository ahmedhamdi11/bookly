import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        children: [
          if (book.saleInfo!.saleability != 'NOT_FOR_SALE')
            Expanded(
                child: CustomButton(
              onPressed: () {
                openURl(url: book.volumeInfo.canonicalVolumeLink);
              },
              btnText: 'get it',
              backgroundColor: Colors.white,
              btnTextColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            )),
          Expanded(
              child: CustomButton(
                  onPressed: () async {
                    openURl(url: book.volumeInfo.previewLink);
                  },
                  btnText: book.volumeInfo.previewLink == null
                      ? 'preview unavailable'
                      : 'preview',
                  backgroundColor: const Color(0xffEF8262),
                  btnTextColor: Colors.white,
                  borderRadius: book.saleInfo!.saleability == 'NOT_FOR_SALE'
                      ? BorderRadius.circular(16.0)
                      : const BorderRadius.only(
                          topRight: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ))),
        ],
      ),
    );
  }
}
