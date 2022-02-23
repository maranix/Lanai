import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lanai/application/utils/url_launcher.dart';

class PreviewFAB extends StatelessWidget with UrlMixin {
  const PreviewFAB({Key? key, required this.data}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: Text(data.alt),
                  ),
                  ListTile(
                    leading: const Icon(Icons.link),
                    title: const Text('View on Pexels'),
                    onTap: () => openUrl(data.url),
                  ),
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: Text(data.photographer),
                    onTap: () => openUrl(data.photographer_url),
                  ),
                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text('Share'),
                    onTap: () => shareAsset(data.url, data.alt),
                  ),
                ],
              );
            });
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: ExtendedImage.asset(
        'assets/icons/pexels.png',
        color: Colors.greenAccent,
      ),
    );
  }
}
