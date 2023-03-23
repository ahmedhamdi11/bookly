import 'package:bookly/core/utile/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            width: 75,
            height: 18.1,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AssetsData.searchIcon,
                width: 25,
                height: 25,
              )),
        ],
      ),
    );
  }
}
