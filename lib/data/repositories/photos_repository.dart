import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/photo_model.dart';

/// # PhotosRepository
/// The following class extends upon the base PexelsRepository to retrieve photos
/// from Pexels.
class PhotosRepository extends PexelsRepository {
  const PhotosRepository(this.httpClient);

  final http.Client httpClient;

  Future<List<Photo>> getPhotoByQuery(String query, {int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/v1/search?query=$query&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body)['photos'] as List;
      final List<Photo> photos = [];

      for (var i = 0; i < body.length; i++) {
        photos.add(Photo.fromJson(body[i]));
      }

      return photos;
    } else {
      throw Exception("Error getting photos: ${res.statusCode}");
    }
  }

  Future<List<Photo>> getCuratedPhotos({int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/v1/curated?&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body)['photos'] as List;
      final List<Photo> photos = [];

      for (var i = 0; i < body.length; i++) {
        photos.add(Photo.fromJson(body[i]));
      }

      return photos;
    } else {
      throw Exception("Error getting curated photos: ${res.statusCode}");
    }
  }
}
