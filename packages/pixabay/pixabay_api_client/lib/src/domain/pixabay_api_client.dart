import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:pixabay_api_client/src/data/pixabay_api.dart';
import 'package:pixabay_api_client/src/domain/models/models.dart';
import 'package:pixabay_api_client/src/models/photos_response/photos_response.dart';
import 'package:pixabay_api_client/src/utils/constants.dart';
import 'package:pixabay_api_client/src/utils/exceptions.dart';
import 'package:pixabay_api_client/src/utils/extensions.dart';

class PixabayApiClient implements PixabayInterface {
  PixabayApiClient({http.Client? httpClient})
      : this._(
          baseURL: 'https://pixabay.com/api/',
          httpClient: httpClient,
        );

  PixabayApiClient._({
    required String baseURL,
    http.Client? httpClient,
  })  : _baseURL = baseURL,
        _httpClient = httpClient ?? http.Client();

  final String _baseURL;
  final String _apiKey = Platform.environment['PIXABAY_API_KEY'] ?? '';
  final http.Client _httpClient;

  @override
  Future<Photo> getPhotoFromId({required String id}) async {
    final uri = Uri.parse('$_baseURL/?key=$_apiKey&id=$id');

    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw PixabayApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    final photo = json['hits'] as List<dynamic>;

    return Photo.fromJson(photo.first as Map<String, dynamic>);
  }

  @override
  Future<PhotosResponse> getPhotosFromCategory({
    required PixabayImageCategory category,
    required int page,
    required int perPage,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
  }) async {
    final uri = Uri.parse(
      '$_baseURL/?key=$_apiKey&category=${category.name}&image_type=${imageType.name}&orientation=${imageOrientation.name}&order=${order.name}&editors_choice=$editorsChoice&page=$page&per_page=$perPage',
    );

    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw PixabayApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return PhotosResponse.fromJson(json);
  }

  @override
  Future<PhotosResponse> getPhotosFromColors({
    required PixabayImageColors colors,
    required int page,
    required int perPage,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
  }) async {
    final uri = Uri.parse(
      '$_baseURL/?key=$_apiKey&color=${colors.name}&image_type=${imageType.name}&orientation=${imageOrientation.name}&order=${order.name}&editors_choice=$editorsChoice&page=$page&per_page=$perPage',
    );

    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw PixabayApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return PhotosResponse.fromJson(json);
  }

  @override
  Future<PhotosResponse> getPhotosFromQuery({
    required String query,
    required int page,
    required int perPage,
    PixabayImageType imageType = PixabayImageType.all,
    PixabayImageOrientation imageOrientation = PixabayImageOrientation.all,
    PixabayImageOrder order = PixabayImageOrder.popular,
    bool editorsChoice = false,
  }) async {
    final uri = Uri.parse(
      '$_baseURL/?key=$_apiKey&q=$query&image_type=${imageType.name}&orientation=${imageOrientation.name}&order=${order.name}&editors_choice=$editorsChoice&page=$page&per_page=$perPage',
    );

    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw PixabayApiClientRequestFailure(
        statusCode: response.statusCode,
        body: response.body,
      );
    }

    final json = response.toJsonMap();

    return PhotosResponse.fromJson(json);
  }
}
