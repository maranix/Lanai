import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:lanai/data/repositories/pexels.dart';
import 'package:lanai/domain/models/collections_model.dart';
import 'package:lanai/domain/services/cache_provider.dart';

import '../constants.dart';

class CollectionsRepository extends PexelsCollectionsRepository {
  @override
  Future<List<Collection>> getCollections() async {
    // TODO: Refactor cache hit and cache miss logic to an elegant one.
    final cache = await ApiCacheProvider.getCachedRequest('collections');
    if (cache == null) {
      final response = await http.get(
        Uri.parse(apiPREFIX + 'collections/featured?page=1'),
        headers: {
          'Authorization': apiKEY,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        ApiCacheProvider.cacheRequest('collections', response.body);
        final json = jsonDecode(response.body);
        final collections = Collections.fromJson(json).collections;
        return collections;
      } else {
        throw Exception('Failed to load collections');
      }
    } else {
      final json = jsonDecode(cache);
      final collections = Collections.fromJson(json).collections;
      return collections;
    }
  }

  @override
  Future<List<Collection>> getCollectionDetails(String id) async {
    // TODO: Refactor cache hit and cache miss logic to an elegant one.
    final cache = await ApiCacheProvider.getCachedRequest('collection_$id');
    if (cache == null) {
      final response = await http.get(
        Uri.parse(apiPREFIX + 'collections/$id?page=1'),
        headers: {
          'Authorization': apiKEY,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        ApiCacheProvider.cacheRequest('collections_$id', response.body);
        final json = jsonDecode(response.body);
        final collections = Collections.fromJson(json).collections;
        return collections;
      } else {
        throw Exception('Failed to load collection_$id details');
      }
    } else {
      final json = jsonDecode(cache);
      final collections = Collections.fromJson(json).collections;
      return collections;
    }
  }
}
