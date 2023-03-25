import 'package:bookly/core/utile/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    required this.backgroundColor,
    this.borderRadius,
    required this.btnTextColor,
  });
  final String btnText;
  final Color btnTextColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16.0),
            )),
        onPressed: () {},
        child: Text(
          btnText,
          style: Styles.text18.copyWith(color: btnTextColor),
        ),
      ),
    );
  }
}
