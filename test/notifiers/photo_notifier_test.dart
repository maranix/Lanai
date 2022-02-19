import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/photos_repository.dart';
import 'package:lanai/domain/models/photo_model.dart';
import 'package:lanai/domain/services/photos_notifier.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'photo_notifier_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "PhotoNotifier",
    () {
      test("Returns Photo loading state", () async {
        final client = MockClient();

        final photosNotifier = PhotoNotifier(PhotosRepository(client))
          ..debugMockDependency<List<Photo>>([]);

        expect(photosNotifier.debugState, []);
      });

      test("Updates loading state with curated List of Photo objects",
          () async {
        final client = MockClient();

        final photosNotifier = PhotoNotifier(PhotosRepository(client))
          ..debugMockDependency<List<Photo>>([]);

        when(client.get(Uri.parse('$apiPREFIX/v1/curated?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(curatedPhotoResponse, 200),
        );

        // Initial state will be an empty List<Photo> state.
        expect(photosNotifier.debugState, []);

        // Get photo from repository
        await photosNotifier.curated();

        // Ensure that we are getting a List of Photo Objects.
        expect(photosNotifier.debugState, isA<List<Photo>>());

        // Ensure that our List is not empty.
        expect(photosNotifier.debugState.length, greaterThan(0));
      });

      test("Search query returns a List of Photo objects", () async {
        final client = MockClient();

        final photosNotifier = PhotoNotifier(PhotosRepository(client))
          ..debugMockDependency<List<Photo>>([]);

        when(client.get(
            Uri.parse('$apiPREFIX/v1/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(photoSearchResponse, 200),
        );

        // Initial state will be an empty List<Photo> state.
        expect(photosNotifier.debugState, []);

        // Get photo from repository
        await photosNotifier.search('nature');

        // Ensure that we are getting a List of Photo Objects.
        expect(photosNotifier.debugState, isA<List<Photo>>());

        // Ensure that our List is not empty.
        expect(photosNotifier.debugState.length, greaterThan(0));
      });

      test("search returns an empty list", () async {
        final client = MockClient();

        final photosNotifier = PhotoNotifier(PhotosRepository(client))
          ..debugMockDependency<List<Photo>>([]);

        // Initial state will be loading state.
        expect(photosNotifier.debugState, []);

        // stub for when the notifier calls the repository
        when(client.get(
            Uri.parse('$apiPREFIX/v1/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // Get photos from repository
        await photosNotifier.search('nature');

        expect(photosNotifier.debugState,
            [Photo.error(Exception("Error getting photos: 404").toString())]);
      });

      test("curated returns an empty list", () async {
        final client = MockClient();

        final photosNotifier = PhotoNotifier(PhotosRepository(client))
          ..debugMockDependency<List<Photo>>([]);

        // Initial state will be loading state.
        expect(photosNotifier.debugState, []);

        // stub for when the notifier calls the repository
        when(client.get(Uri.parse('$apiPREFIX/v1/curated?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // Get photos from repository
        await photosNotifier.curated();

        expect(photosNotifier.debugState, [
          Photo.error(Exception("Error getting curated photos: 404").toString())
        ]);
      });
    },
  );
}
