import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/screens/about_page.dart';
import 'package:lanai/application/screens/legal_page.dart';
import 'package:lanai/application/theme/style.dart';
import 'package:lanai/application/widgets/app_bar.dart';
import 'package:lanai/application/widgets/section_widget.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:lanai/domain/services/video_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoNotifier = PhotoNotifier(PhotosRepository(http.Client()));
    final videoNotifier = VideosNotifier(VideosRepository(http.Client()));

    photoNotifier.curated();
    videoNotifier.popular();

    final _scrollController = ScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          AppBarSliver(scrollController: _scrollController),
          SectionWidget(stateNotifier: photoNotifier),
          SectionWidget(stateNotifier: videoNotifier),
          const SliverToBoxAdapter(child: Constants.gap10h)
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Legal',
                      style: Style.textStyleDrawer,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LegalPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'About',
                      style: Style.textStyleDrawer,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AboutPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Powered by',
                    style: Style.textStyleDrawer,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Image.network(
                        'https://images.pexels.com/lib/api/pexels.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
