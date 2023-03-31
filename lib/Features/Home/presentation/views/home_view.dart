import 'package:bookly/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly/core/utile/app_router.dart';
import 'package:bookly/core/utile/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: SvgPicture.asset(
          AssetsData.logo,
          width: 75,
          height: 18.1,
        ),
        actionOne: IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchViewPath);
            },
            icon: SvgPicture.asset(
              AssetsData.searchIcon,
              width: 25,
              height: 25,
            )),
      ),
      body: const HomeViewBody(),
    );
  }
}
