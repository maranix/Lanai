import 'package:flutter/material.dart';
import 'package:lanai/features/theme/theme.dart';
import 'package:lanai/home/widgets/widgets.dart';
import 'package:lanai/photo/photo.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Pexels',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () =>
                      context.read<ThemeBloc>().add(const ThemeToggled()),
                  icon: const Icon(Icons.brightness_6),
                ),
                const MoreVertButton(),
              ],
            ),
          ],
        ),
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
              onPressed: () => Navigator.push(
                context,
                PhotoPage.route(
                  title: "Curated",
                  event: const CuratedPhotoFetched(),
                ),
              ),
              child: const Text('See All'),
            ),
          ],
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            PhotoPage.route(
              title: "Curated",
              event: const CuratedPhotoFetched(),
            ),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
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
      ],
    );
  }
}
