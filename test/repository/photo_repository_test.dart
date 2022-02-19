// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'photo_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "Photo Repository",
    () {
      test(
          "getPhotoByQuery Returns a List of Photo objects if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/v1/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(photoSearchResponse, 200),
        );

        final photos = await PhotosRepository(client).getPhotoByQuery('nature');

        expect(photos, isA<List<Photo>>());

        expect(photos.length, greaterThan(0));
      });

      test(
          "getCuratedPhotos Returns a List of Photo objects if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(Uri.parse('$apiPREFIX/v1/curated?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(curatedPhotoResponse, 200),
        );

        final photos = await PhotosRepository(client).getCuratedPhotos();

        expect(photos, isA<List<Photo>>());

        expect(photos.length, greaterThan(0));
      });

      test(
          "getPhotoByQuery Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/v1/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response("Not found", 404),
        );

        expect(PhotosRepository(client).getPhotoByQuery('nature'),
            throwsException);
      });

      test(
          "getCuratedPhotos Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(Uri.parse('$apiPREFIX/v1/curated?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response("Not found", 404),
        );

        expect(PhotosRepository(client).getCuratedPhotos(), throwsException);
      });
    },
  );
}
