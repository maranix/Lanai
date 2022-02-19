import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/data/constants.dart';
import 'package:lanai/data/repositories/collections_repository.dart';
import 'package:lanai/domain/models/collections_model.dart';
import 'package:lanai/domain/services/collections_notifier.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../response_constants.dart';
import 'collections_notifier_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group(
    "CollectionsNotifier",
    () {
      test("Returns Collection loading state", () async {
        final client = MockClient();

        final collectionsNotifier =
            CollectionsNotifier(CollectionsRepository(client))
              ..debugMockDependency<List<Collection>>([]);

        expect(collectionsNotifier.debugState, []);
      });

      test("Updates loading state with Featured List of Collection objects",
          () async {
        final client = MockClient();

        final collectionsNotifier =
            CollectionsNotifier(CollectionsRepository(client))
              ..debugMockDependency<List<Collection>>([]);

        when(client.get(
            Uri.parse('$apiPREFIX/v1/collections/featured?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response(featuredCollectionsResponse, 200),
        );

        // Initial state will be an empty List<Collection> state.
        expect(collectionsNotifier.debugState, []);

        // Get collection from repository
        await collectionsNotifier.featuredCollection();

        // Ensure that we are getting a List of Collection Objects.
        expect(collectionsNotifier.debugState, isA<List<Collection>>());

        // Ensure that our List is not empty.
        expect(collectionsNotifier.debugState.length, greaterThan(0));
      });

      test("Returns an empty list", () async {
        final client = MockClient();

        final collectionsNotifier =
            CollectionsNotifier(CollectionsRepository(client))
              ..debugMockDependency<List<Collection>>([]);

        // Initial state will be loading state.
        expect(collectionsNotifier.debugState, []);

        // stub for when the notifier calls the repository
        when(client.get(
            Uri.parse('$apiPREFIX/v1/collections/featured?&page=1&per_page=80'),
            headers: {
              'Authorization': '',
              'Content-Type': 'application/json',
            })).thenAnswer(
          (_) async => http.Response('Not found', 404),
        );

        // Get collections from repository
        await collectionsNotifier.featuredCollection();

        expect(collectionsNotifier.debugState, [
          Collection.error(
              Exception("Error getting featured collections: 404").toString())
        ]);
      });
    },
  );

  group('CollectionMediaNotifier', () {
    test("Returns CollectionMedia loading state", () async {
      final client = MockClient();

      final collectionsNotifier =
          CollectionsNotifier(CollectionsRepository(client))
            ..debugMockDependency<List<Collection>>([]);

      expect(collectionsNotifier.debugState, []);
    });

    test("CollectionMedia returns CollectionMedia object", () async {
      final client = MockClient();

      final collectionsMediaNotifier = CollectionsMediaNotifier(
          CollectionsRepository(client))
        ..debugMockDependency<CollectionMedia>(const CollectionMedia.loading());

      when(client.get(
          Uri.parse('$apiPREFIX/v1/collections/usy2j0g?&page=1&per_page=80'),
          headers: {
            'Authorization': '',
            'Content-Type': 'application/json',
          })).thenAnswer(
        (_) async => http.Response(collectionMediaResponse, 200),
      );

      // Initial state.
      expect(
          collectionsMediaNotifier.debugState, const CollectionMedia.loading());

      // Get collection from repository
      await collectionsMediaNotifier.collectionMedia('usy2j0g');

      // Ensure that we are getting a List of Collection Objects.
      expect(collectionsMediaNotifier.debugState, isA<CollectionMedia>());
    });

    test("Returns an error if http call is not successful", () async {
      final client = MockClient();

      final collectionsMediaNotifier = CollectionsMediaNotifier(
          CollectionsRepository(client))
        ..debugMockDependency<CollectionMedia>(const CollectionMedia.loading());

      // Initial state will be loading state.
      expect(
          collectionsMediaNotifier.debugState, const CollectionMedia.loading());

      // stub for when the notifier calls the repository
      when(client.get(
          Uri.parse('$apiPREFIX/v1/collections/usy2j0g?&page=1&per_page=80'),
          headers: {
            'Authorization': '',
            'Content-Type': 'application/json',
          })).thenAnswer(
        (_) async => http.Response('Not found', 404),
      );

      // Get collections from repository
      await collectionsMediaNotifier.collectionMedia('usy2j0g');

      expect(
          collectionsMediaNotifier.debugState,
          CollectionMedia.error(
              Exception("Error getting collection media: 404").toString()));
    });
  });
}
