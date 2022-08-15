import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pexels_repository/src/model/photo.dart';
import 'package:pexels_repository/src/repository/repository.dart';

class PexelsRepository implements Repository {
  const PexelsRepository({required http.Client client}) : _client = client;

  final http.Client _client;

  @override
  Future<PhotoList> getCuratedPhotos() async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/curated"),
      headers: <String, String>{
        'Authorization':
            "563492ad6f917000010000019794731a6f5c4feabdab4e47c2899298",
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final PhotoList photoList = PhotoList.fromJson(json);

      return photoList;
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }

  @override
  Future<Photo> getPhotoById({required String id}) async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/photos/$id"),
      headers: <String, String>{
        'Authorization':
            "563492ad6f917000010000019794731a6f5c4feabdab4e47c2899298",
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return Photo.fromJson(json);
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }

  @override
  Future<PhotoList> getPhotosByQuery(
      {required String query, int? page = 1}) async {
    final http.Response response = await _client.get(
      Uri.parse("https://api.pexels.com/v1/search?query=$query"),
      headers: <String, String>{
        'Authorization':
            "563492ad6f917000010000019794731a6f5c4feabdab4e47c2899298",
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Http request timed out.', 408),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final PhotoList photoList = PhotoList.fromJson(json);

      return photoList;
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }
}
