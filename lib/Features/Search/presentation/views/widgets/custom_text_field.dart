import 'package:flutter/material.dart';

class CustomTextfied extends StatelessWidget {
  const CustomTextfied({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        hintText: 'Search',
      ),
    );
  }
}
