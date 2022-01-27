import 'dart:convert';

import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class PhotoRepository extends PexelsPhotoRepository {
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
      throw Exception('Failed to load curated photos');
    }
  }

  @override
  Future<List<PhotoElement>> getNaturePhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=nature&page=1'),
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
      throw Exception('Failed to load nature photos');
    }
  }

  @override
  Future<List<PhotoElement>> getWFHPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=work+from+home&page=1'),
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
      throw Exception('Failed to load work from home photos');
    }
  }

  @override
  Future<List<PhotoElement>> getLightPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=light&page=1'),
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
      throw Exception('Failed to load light photos');
    }
  }

  @override
  Future<List<PhotoElement>> getTexturePhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=texture&page=1'),
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
      throw Exception('Failed to load texture photos');
    }
  }

  @override
  Future<List<PhotoElement>> getRainingPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=raining&page=1'),
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
      throw Exception('Failed to load raining photos');
    }
  }

  @override
  Future<List<PhotoElement>> getAdventurePhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=adventure&page=1'),
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
      throw Exception('Failed to load adventure photos');
    }
  }

  @override
  Future<List<PhotoElement>> getDarkPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=dark&page=1'),
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
      throw Exception('Failed to load dark photos');
    }
  }

  @override
  Future<List<PhotoElement>> getRetroPhotos() async {
    final response = await http.get(
      Uri.parse(apiPREFIX + 'search?query=retro&page=1'),
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
      throw Exception('Failed to load retro photos');
    }
  }
}
