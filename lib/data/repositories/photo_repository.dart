import 'dart:convert';
import 'dart:math';

import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/domain/services/cache_provider.dart';

import '../constants.dart';

class PhotoRepository extends PexelsPhotoRepository {
  // !reserved for future release
  // @override
  // Future<List<PhotoElement>> getCuratedPhotos() async {
  //   final response = await http.get(
  //     Uri.parse(apiPREFIX + 'curated?&page=1'),
  //     headers: {
  //       'Authorization': apiKEY,
  //       'Content-Type': 'application/json',
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final json = jsonDecode(response.body);
  //     final photos = Photo.fromJson(json).photos;
  //     return photos;
  //   } else {
  //     throw Exception('Failed to load curated photos');
  //   }
  // }

  @override
  Future<List<PhotoElement>> getPhotos(String query, {int? page}) async {
    final rand = Random();
    page ??= 1 + rand.nextInt(499);

    // TODO: Refactor cache hit and cache miss logic to an elegant one.
    final cache = await ApiCacheProvider.getCachedRequest(query);
    if (cache == null) {
      final response = await http.get(
        Uri.parse(apiPREFIX + 'search?query=$query&page=$page&per_page=14'),
        headers: {
          'Authorization': apiKEY,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        ApiCacheProvider.cacheRequest(query, response.body);
        final json = jsonDecode(response.body);
        final photos = Photo.fromJson(json).photos;
        return photos;
      } else {
        throw Exception('Failed to get $query photos');
      }
    } else {
      final json = jsonDecode(cache);
      final collections = Photo.fromJson(json).photos;
      return collections;
    }
  }
}
