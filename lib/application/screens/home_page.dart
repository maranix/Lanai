import 'package:flutter/material.dart';
import 'package:lanai/application/constants/contants.dart';
import 'package:lanai/application/screens/search_page.dart';
import 'package:lanai/application/theme/style.dart';
import 'package:lanai/application/widgets/category_showcase.dart';
import 'package:lanai/domain/services/photo_provider.dart';
import 'package:provider/provider.dart';

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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: const Text(
              'Lanai',
              style: Style.textStyleHeading,
            ),
            centerTitle: true,
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
                color: Colors.black,
              ),
            ],
            toolbarHeight: MediaQuery.of(context).size.height * 0.1,
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
                            fontWeight: FontWeight.w600,
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
                                          : selectedCategory == 'Retro'
                                              ? CategoryShowCase(
                                                  photos: Provider.of<
                                                              PhotoProvider>(
                                                          context)
                                                      .retroPhotos,
                                                )
                                              : const Center(
                                                  child:
                                                      CircularProgressIndicator
                                                          .adaptive(),
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
