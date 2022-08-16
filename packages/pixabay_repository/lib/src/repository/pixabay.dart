import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pixabay_repository/src/constants.dart';
import 'package:pixabay_repository/src/model/pixabay_photo.dart';
import 'package:pixabay_repository/src/repository/repository.dart';

class PixabayRepository implements Repository {
  const PixabayRepository({required http.Client client}) : _client = client;

  final http.Client _client;

  @override
  Future<PixabayPhotoList> getPhotosByQuery({
    required List<String> query,
  }) async {
    final q = query.join('+');

    final http.Response response = await _client.get(
      Uri.parse(
        "https://pixabay.com/api/?key=$pixabayKEY&q=$q&image_type=all",
      ),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final PixabayPhotoList photoList = PixabayPhotoList.fromJson(json);

      return photoList;
    } else {
      throw Exception("Error getting photos: ${response.statusCode}");
    }
  }
}
