import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/constants/contants.dart';
import 'package:lanai/application/theme/style.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({Key? key, required this.data}) : super(key: key);

  final PhotoElement data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              Share.share(data.url, subject: data.alt);
            },
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xFFFFFEF4),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(data.src.large),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Constants.gap,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Photographer:',
                        style: Style.textStyleDetails,
                      ),
                      Text(
                        data.photographer,
                        style: Style.textStyleDetails,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Photographer Url:',
                        style: Style.textStyleDetails,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (await canLaunch(data.photographerUrl)) {
                            if (!await launch(data.photographerUrl)) {
                              throw 'Could not launch ${data.photographerUrl}';
                            }
                          }
                        },
                        child: const Text(
                          'Explore more on Pexels',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Color:',
                        style: Style.textStyleDetails,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        color: Color(int.parse(
                            '0xFF${data.avgColor.replaceFirst(RegExp(r'#'), '')}')),
                      )
                    ],
                  )
                ],
              ),
              Constants.gap,
              Constants.gap,
              Constants.gap,
              const Text(
                'Description:',
                style: Style.textStyleDetails,
              ),
              Text(
                data.alt,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 25,
                ),
              ),
              Constants.gap,
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (await canLaunch(data.url)) {
                      if (!await launch(data.url)) {
                        throw 'Could not launch ${data.url}';
                      }
                    }
                  },
                  child: const Text(
                    'Visit on Pexels',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
