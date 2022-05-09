import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

mixin UrlMixin {
  void openUrl(String url) async {
    if (await canLaunch(url)) {
      if (!await launch(url)) {
        throw 'Could not launch $url';
      }
    }
  }

  void shareAsset(String url, String alt) {
    Share.share(url, subject: alt);
  }
}
