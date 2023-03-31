import 'package:bookly/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: const [
            CustomTextfied(),
          ]),
        ),
      ),
    );
  }
}
