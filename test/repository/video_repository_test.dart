// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/videos_repository.dart';
import 'package:lanai/domain/models/video_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'video_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "Video Repository",
    () {
      test(
          "getVideoByQuery Returns a List of Video objects if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse(
                '$apiPREFIX/videos/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(videoSearchResponse, 200),
        );

        final videos = await VideosRepository(client).getVideoByQuery('nature');

        expect(videos, isA<List<Video>>());

        expect(videos.length, greaterThan(0));
      });

      test(
          "getPopularVideos Returns a List of Video objects if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/videos/popular?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(popularVideoResponse, 200),
        );

        final videos = await VideosRepository(client).getPopularVideos();

        expect(videos, isA<List<Video>>());

        expect(videos.length, greaterThan(0));
      });

      test(
          "getVideoByQuery Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse(
                '$apiPREFIX/videos/search?query=nature&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response("Not found", 404),
        );

        expect(VideosRepository(client).getVideoByQuery('nature'),
            throwsException);
      });

      test(
          "getPopularVideos Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/videos/popular?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response("Not found", 404),
        );

        expect(VideosRepository(client).getPopularVideos(), throwsException);
      });
    },
  );
}
