import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/application/constants/category_constants.dart';
import 'package:lanai/application/constants/constants.dart';
import 'package:lanai/application/screens/about_page.dart';
import 'package:lanai/application/screens/discover_page.dart';
import 'package:lanai/application/screens/legal_page.dart';
import 'package:lanai/application/screens/search_page.dart';
import 'package:lanai/application/theme/style.dart';
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Discover',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: const _CategoriesList(),
            ),
            SectionWidget(stateNotifier: photoNotifier),
            SectionWidget(stateNotifier: videoNotifier),
            Constants.gap10h,
          ],
        ),
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

class _CategoriesList extends StatelessWidget {
  const _CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DiscoverPage(
                          query: categoriesList.keys.elementAt(index)),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage(
                        categoriesList.values.elementAt(index),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              categoriesList.keys.elementAt(index),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => Constants.gap10w,
      itemCount: categoriesList.keys.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
