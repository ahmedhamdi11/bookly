import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    {required Widget actionOne, required Widget title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title,
    actions: [
      actionOne,
      const SizedBox(
        width: 12.0,
      )
    ],
  );
}
