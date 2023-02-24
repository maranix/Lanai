import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:pexels_api_client/src/data/pexels_api.dart';
import 'package:pexels_api_client/src/domain/models/models.dart';
import 'package:pexels_api_client/src/models/models.dart';
import 'package:pexels_api_client/src/utils/utils.dart';

class PexelsApiClient implements PexelsInterface {
  PexelsApiClient({http.Client? httpClient})
      : this._(
          baseURL: 'https://api.pexels.com/v1',
          httpClient: httpClient,
        );

  PexelsApiClient._({required String baseURL, http.Client? httpClient})
      : _baseURL = baseURL,
        _httpClient = httpClient ?? http.Client();

  final String _baseURL;
  final http.Client _httpClient;

  @override
  Future<Photo> getPhotoFromId({
    required int id,
  }) async {
    final uri = Uri.parse('$_baseURL/photos/$id');

    final response = await _httpClient.get(
      uri,
      headers: {
        'Authorization': Platform.environment['PEXELS_API_KEY'] ?? '',
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw PexelsApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return Photo.fromJson(json);
  }

  @override
  Future<PhotosResponse> getPhotosFromQuery({
    required String query,
    required int page,
    required int perPage,
    PexelsImageOrientation? imageOrientation,
    PexelsImageSize? imageSize,
    PexelsImageColor? imageColor,
  }) async {
    final uri = Uri.parse(
      '$_baseURL/search?query=$query&imageOrientation=${imageOrientation?.name}&imageSize=${imageSize?.name}&color=${imageColor?.name}&page=$page&per_page=$perPage',
    );

    final response = await _httpClient.get(
      uri,
      headers: {
        'Authorization': Platform.environment['PEXELS_API_KEY'] ?? '',
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw PexelsApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return PhotosResponse.fromJson(json);
  }

  @override
  Future<PhotosResponse> getCuratedPhotos({
    required int page,
    required int perPage,
  }) async {
    final uri = Uri.parse('$_baseURL/curated?page=$page&per_page=$perPage');

    final response = await _httpClient.get(
      uri,
      headers: {
        'Authorization': Platform.environment['PEXELS_API_KEY'] ?? '',
      },
    );

    if (response.statusCode != HttpStatus.ok) {
      throw PexelsApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return PhotosResponse.fromJson(json);
  }

}
