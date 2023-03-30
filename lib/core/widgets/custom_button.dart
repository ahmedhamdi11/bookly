import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    required this.backgroundColor,
    this.borderRadius,
    required this.btnTextColor,
    this.onPressed,
  });
  final String btnText;
  final Color btnTextColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
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
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(
              color: btnTextColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
