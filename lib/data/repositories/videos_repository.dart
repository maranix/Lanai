import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/video_model.dart';

/// # VideosRepository
/// The following class extends upon the base PexelsRepository to retrieve videos
/// from Pexels.
class VideosRepository extends PexelsRepository {
  const VideosRepository(this.httpClient);

  final http.Client httpClient;

  Future<List<Video>> getVideoByQuery(String query, {int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/videos/search?query=$query&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Request timed out', 408),
    );

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body)['videos'] as List;
      final List<Video> videos = [];

      for (var i = 0; i < body.length; i++) {
        videos.add(Video.fromJson(body[i]));
      }

      return videos;
    } else {
      throw Exception("Error getting videos: ${res.statusCode}");
    }
  }

  Future<List<Video>> getPopularVideos({int? page = 1}) async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/videos/popular?&page=$page&per_page=80'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () => http.Response('Request timed out', 408),
    );

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body)['videos'] as List;
      final List<Video> videos = [];

      for (var i = 0; i < body.length; i++) {
        videos.add(Video.fromJson(body[i]));
      }

      return videos;
    } else {
      throw Exception("Error getting popular videos: ${res.statusCode}");
    }
  }
}
