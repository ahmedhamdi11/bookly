import 'package:bookly/core/utile/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: SvgPicture.asset(
      AssetsData.logo,
      width: 75,
      height: 18.1,
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetsData.searchIcon,
            width: 25,
            height: 25,
          )),
      const SizedBox(
        width: 8.0,
      )
    ],
  );
}
