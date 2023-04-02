import 'package:bookly/Features/Home/presentation/manager/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/manager/cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class FailureUi extends StatelessWidget {
  const FailureUi({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset('assets/lotties/error.json',
              width: MediaQuery.of(context).size.width * 0.6),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                errMessage,
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 32.0,
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
              BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
            },
            btnText: 'try again',
            backgroundColor: const Color(0xffEF8262),
            btnTextColor: Colors.white,
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
