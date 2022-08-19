import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pexels_repository/src/model/pexels_photo.dart';
import 'package:pexels_repository/src/repository/repository.dart';

class PexelsRepository implements Repository {
  const PexelsRepository({required http.Client client}) : _client = client;

  final http.Client _client;

  static const String _apiKEY = String.fromEnvironment("pexelsKEY");

  @override
  Future<PexelsPhotoList> getCuratedPhotos() async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
      headers: <String, String>{
        'Authorization': _apiKEY,
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final PexelsPhotoList photoList = PexelsPhotoList.fromJson(json);

      return photoList;
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }

  @override
  Future<PexelsPhoto> getPhotoById({required String id}) async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/photos/$id"),
      headers: <String, String>{
        'Authorization': _apiKEY,
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return PexelsPhoto.fromJson(json);
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }

  @override
  Future<PexelsPhotoList> getPhotosByQuery({required String query, int? page = 1}) async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/search?query=$query"),
      headers: <String, String>{
        'Authorization': _apiKEY,
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final PexelsPhotoList photoList = PexelsPhotoList.fromJson(json);

      return photoList;
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }
}
