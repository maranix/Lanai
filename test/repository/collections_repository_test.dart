// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/domain/models/collections_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'collections_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "Collections Repository",
    () {
      test(
          "getFeaturedCollections Returns a List of Collections objects if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/v1/collections/featured?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(featuredCollectionsResponse, 200),
        );

        final collections =
            await CollectionsRepository(client).getFeaturedCollections();

        expect(collections, isA<List<Collection>>());

        expect(collections.length, greaterThan(0));
      });

      test(
          "getCollectionMedia Returns CollectionMedia if the http call completes successfully",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/v1/collections/usy2j0g?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(collectionMediaResponse, 200),
        );

        final collectionMedia =
            await CollectionsRepository(client).getCollectionMedia('usy2j0g');

        expect(collectionMedia, isA<CollectionMedia>());
      });

      // test(
      //     "getFeaturedCollections Returns an exception if the http call completes with an error",
      //     () async {
      //   final client = MockClient();
      //
      //   when(client.get(
      //       Uri.parse('$apiPREFIX/v1/collections/featured?&page=1&per_page=80'),
      //       headers: {
      //         'Authorization': '',
      //         'Content-Type': 'application/json',
      //       })).thenAnswer(
      //     (_) async => http.Response("Not found", 404),
      //   );
      //
      //   expect(CollectionsRepository(client).getFeaturedCollections(),
      //       throwsException);
      // });

      test(
          "getCollectionMedia Returns an exception if the http call completes with an error",
          () async {
        final client = MockClient();

        when(client.get(
            Uri.parse('$apiPREFIX/v1/collections/usy2j0g?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response("Not found", 404),
        );

        expect(CollectionsRepository(client).getCollectionMedia('usy2j0g'),
            throwsException);
      });
    },
  );
}
