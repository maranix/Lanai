import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:lanai/domain/services/video_notifier.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'video_notifier_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "VideoNotifier",
    () {
      test("Returns Video loading state", () async {
        final client = MockClient();

        final videosNotifier = VideosNotifier(VideosRepository(client))
          ..debugMockDependency<List<Video>>([]);

        expect(videosNotifier.debugState, []);
      });

      test("Updates loading state with popular List of Video objects",
          () async {
        final client = MockClient();

        final videosNotifier = VideosNotifier(VideosRepository(client))
          ..debugMockDependency<List<Video>>([]);

        when(client.get(
            Uri.parse('$apiPREFIX/videos/popular?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(popularVideoResponse, 200),
        );

        // Initial state will be an empty List<Video> state.
        expect(videosNotifier.debugState, []);

        // Get photo from repository
        await videosNotifier.popular();

        // Ensure that we are getting a List of Video Objects.
        expect(videosNotifier.debugState, isA<List<Video>>());

        // Ensure that our List is not empty.
        expect(videosNotifier.debugState.length, greaterThan(0));
      });

      test("Search query returns a List of Video objects", () async {
        final client = MockClient();

        final videosNotifier = VideosNotifier(VideosRepository(client))
          ..debugMockDependency<List<Video>>([]);

        when(client.get(
            Uri.parse(
                '$apiPREFIX/videos/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(videoSearchResponse, 200),
        );

        // Initial state will be an empty List<Video> state.
        expect(videosNotifier.debugState, []);

        // Get photo from repository
        await videosNotifier.search('nature');

        // Ensure that we are getting a List of Video Objects.
        expect(videosNotifier.debugState, isA<List<Video>>());

        // Ensure that our List is not empty.
        expect(videosNotifier.debugState.length, greaterThan(0));
      });

      test("search returns an empty list", () async {
        final client = MockClient();

        final videosNotifier = VideosNotifier(VideosRepository(client))
          ..debugMockDependency<List<Video>>([]);

        // Initial state will be loading state.
        expect(videosNotifier.debugState, []);

        // stub for when the notifier calls the repository
        when(client.get(
            Uri.parse(
                '$apiPREFIX/videos/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // Get photos from repository
        await videosNotifier.search('nature');

        expect(videosNotifier.debugState,
            [Video.error(Exception("Error getting videos: 404").toString())]);
      });

      test("curated returns an empty list", () async {
        final client = MockClient();

        final videosNotifier = VideosNotifier(VideosRepository(client))
          ..debugMockDependency<List<Video>>([]);

        // Initial state will be loading state.
        expect(videosNotifier.debugState, []);

        // stub for when the notifier calls the repository
        when(client.get(
            Uri.parse('$apiPREFIX/videos/popular?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // Get photos from repository
        await videosNotifier.popular();

        expect(videosNotifier.debugState, [
          Video.error(Exception("Error getting popular videos: 404").toString())
        ]);
      });
    },
  );
}
