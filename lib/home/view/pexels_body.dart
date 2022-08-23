import 'package:flutter/material.dart';
import 'package:lanai/home/home.dart';

class PexelsBody extends StatelessWidget {
  const PexelsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Curated',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('See All'),
            ),
          ],
        ),
        GestureDetector(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/curated.jpg',
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SearchBar(),
        const SizedBox(height: 20),
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Expanded(
          child: CategoriesCarousel(),
        ),
      ],
    );
  }
}
