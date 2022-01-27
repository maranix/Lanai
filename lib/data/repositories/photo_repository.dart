import 'dart:convert';

import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class PhotoRepository extends PexelsRepository {
  @override
  Future<List<PhotoElement>> getCuratedPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'curated?&page=1'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final photos = Photo.fromJson(json).photos;
      return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
