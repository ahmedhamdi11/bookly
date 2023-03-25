import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
            btnText: '19.99€',
            backgroundColor: Colors.white,
            btnTextColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
          )),
          Expanded(
              child: CustomButton(
            btnText: 'Free preview',
            backgroundColor: Color(0xffEF8262),
            btnTextColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          )),
        ],
      ),
    );
  }
}
