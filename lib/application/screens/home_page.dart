import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/constants/contants.dart';
import 'package:lanai/application/screens/search_page.dart';
import 'package:lanai/application/theme/style.dart';
import 'package:lanai/application/widgets/category_showcase.dart';
import 'package:lanai/domain/services/photo_provider.dart';
import 'package:provider/provider.dart';

import 'about_page.dart';
import 'legal_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedCategory = 'Nature';

  @override
  void initState() {
    super.initState();
    Provider.of<PhotoProvider>(context, listen: false).getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFEF4),
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
                    child: CachedNetworkImage(
                        imageUrl:
                            'https://images.pexels.com/lib/api/pexels.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: const Text(
              'Lanai',
              style: Style.textStyleHeading,
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SearchPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.search_rounded),
              ),
            ],
            toolbarHeight:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.height * 0.1
                    : MediaQuery.of(context).size.height * 0.15,
            elevation: 0,
            backgroundColor: const Color(0xFFFFFEF4),
          ),
        ],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ListView.separated(
                      itemBuilder: (context, index) => TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = Constants.categoryList[index];
                          });
                        },
                        child: Text(
                          Constants.categoryList[index],
                          style: TextStyle(
                            color: selectedCategory ==
                                    Constants.categoryList[index]
                                ? Colors.black
                                : Colors.grey,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: Constants.categoryList.length,
                    ),
                  ),
                  Constants.gap,
                  selectedCategory == 'Nature'
                      ? CategoryShowCase(
                          photos:
                              Provider.of<PhotoProvider>(context).naturePhotos,
                        )
                      : selectedCategory == 'Light'
                          ? CategoryShowCase(
                              photos: Provider.of<PhotoProvider>(context)
                                  .lightsPhotos,
                            )
                          : selectedCategory == 'Texture'
                              ? CategoryShowCase(
                                  photos: Provider.of<PhotoProvider>(context)
                                      .texturePhotos,
                                )
                              : selectedCategory == 'Raining'
                                  ? CategoryShowCase(
                                      photos:
                                          Provider.of<PhotoProvider>(context)
                                              .rainingPhotos,
                                    )
                                  : selectedCategory == 'Adventure'
                                      ? CategoryShowCase(
                                          photos: Provider.of<PhotoProvider>(
                                                  context)
                                              .adventurePhotos,
                                        )
                                      : selectedCategory == 'Dark'
                                          ? CategoryShowCase(
                                              photos:
                                                  Provider.of<PhotoProvider>(
                                                          context)
                                                      .darkPhotos,
                                            )
                                          : CategoryShowCase(
                                              photos:
                                                  Provider.of<PhotoProvider>(
                                                          context)
                                                      .retroPhotos,
                                            ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
