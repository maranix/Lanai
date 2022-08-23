import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';

class PixabayBody extends StatelessWidget {
  const PixabayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SearchBar(),
      ],
    );
  }
}
