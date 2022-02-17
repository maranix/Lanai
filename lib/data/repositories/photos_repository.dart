import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/photo_model.dart';

// TODO: Implement PhotosRepository to retrieve photos from the api.
/// # PhotosRepository
/// The following class extends upon the base PexelsRepository to retrieve photos
/// from Pexels.
class PhotosRepository extends PexelsRepository {
  const PhotosRepository(this.httpClient);

  final http.Client httpClient;

  Future<Photo> getPhoto() async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/photos/2014422'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      return Photo.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Error getting photo\nreason: ${res.statusCode}");
    }
  }
}
