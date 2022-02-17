import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:state_notifier/state_notifier.dart';

// TODO: Implement PhotoProvider to retrieve photos from the api and rename it to better reflect the usage.
/// # PhotosProvider
/// The following class uses [StateNotifier] to ensure that
/// the dependent widgets are notified whenever the photos are loaded or updated.
class PhotosProvider extends StateNotifier<Photo> with LocatorMixin {
  PhotosProvider(this.httpClient) : super(const Photo.loading());

  final http.Client httpClient;

  Future<void> getPhoto() async {
    final res = await httpClient.get(
      Uri.parse('$apiPREFIX/photos/2014422'),
      headers: {
        'Authorization': apiKEY,
        'Content-Type': 'application/json',
      },
    );

    if (res.statusCode == 200) {
      state = Photo.fromJson(jsonDecode(res.body));
    } else {
      state = Photo.error('${res.statusCode}');
      throw Exception("Error getting photo");
    }
  }
}
